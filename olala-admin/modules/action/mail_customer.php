<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['send'])) {
    $to         = isset($_POST['to']) ? trim($_POST['to']) : '';
    $cc         = isset($_POST['cc']) ? trim($_POST['cc']) : '';
    $bcc        = isset($_POST['bcc']) ? trim($_POST['bcc']) : '';
    $subject    = isset($_POST['subject']) ? trim($_POST['subject']) : '';
    $content    = isset($_POST['content']) ? trim($_POST['content']) : '';
    // ---- FILE
    $files          = '';
    $date           = new DateClass();
    $file_max_size  = FILE_MAX_SIZE;
    $dir_dest       = ROOT_DIR . DS . 'uploads' . DS . 'files' . DS;
    $dir_moth       = $date->vnOther(time(), 'm-Y') . DS;
    $attach         = $_FILES['attach'];
    $attach_size    = $_FILES['attach']['size'];
    $OK             = false;
    $msg            = '';

    $i = 2;
    while ($i < 1) {
        $i++;
    }
    if($attach_size > $file_max_size) {
        $msg = 'Tệp đính kèm của bạn vượt quá kích thước cho phép.';
        $OK = false;

    } elseif($attach_size > 0) {
        $files = $dir_dest . $dir_moth . $attach['name'];
        @copy($attach['tmp_name'], $files);
        $OK = true;

    } else $OK = true;

    if(empty($content)) {
        $msg = 'Bạn vui lòng nhập nội dung thư.';
        $OK = false;
    }

    if($OK) {
        $smtp_host      = getConstant("SMTP_host");
        $smtp_port      = getConstant("SMTP_port");
        $smtp_secure    = getConstant("SMTP_secure");
        $smtp_user      = getConstant("SMTP_username");
        $smtp_pass      = getConstant("SMTP_password");
        $mailname_admin = getConstant("SMTP_mailname");
        $mail_contact   = getConstant("email_contact");
        $content        = sanitize_output($content);

        $mail = new PHPMailer();
        $mail->IsSMTP();

        $mail->Host = $smtp_host;
        $mail->Port = $smtp_port;
        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = true;
        if($smtp_secure != 'none') $mail->SMTPSecure = $smtp_secure;
        $mail->Username = $smtp_user;
        $mail->Password = $smtp_pass;
        $mail->SetFrom($mail->Username, $mailname_admin);

        if(!empty($to)) {
            $list = extractListEmail($to);
            if(!empty($list)) {
                for($i=0; $i<count($list['mail']); $i++) {
                    $mail->AddAddress($list['mail'][$i], $list['name'][$i]);
                }
            }
        }
        if(!empty($cc)) {
            $list = extractListEmail($cc);
            if(!empty($list)) {
                for($i=0; $i<count($list['mail']); $i++) {
                    $mail->addCC($list['mail'][$i], $list['name'][$i]);
                }
            }
        }
        if(!empty($bcc)) {
            $list = extractListEmail($bcc);
            if(!empty($list)) {
                for($i=0; $i<count($list['mail']); $i++) {
                    $mail->addBCC($list['mail'][$i], $list['name'][$i]);
                }
            }
        }
        $mail->AddReplyTo($mail_contact, $mailname_admin);

        $mail->IsHTML(true);
        $mail->Subject = $subject;
        $mail->CharSet = "utf-8";
        $mail->Body = $content;
        if(!empty($files)) $mail->AddAttachment($files);

        if($mail->Send()) {
            if(!empty($files)) unlink($files);
            $msg = 'Thử của bạn đã được gửi đi thành công.';
            $OK = true;
        } else {
            $msg = 'Lỗi hệ thống máy chủ, vui lòng thử lại.';
            $OK = false;
        }
    }

    echo json_encode( array( "msg_process" => $OK, "msg_txt" => $msg) );

} else echo json_encode(false);