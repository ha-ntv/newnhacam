<div class="container">
    <div class="row hidden-md-down">
        <div class="col-xs-12">
            <div class="breadcrumbList">
                <ul class="breadcrumb">
                    <li><a href="https://www.mkrestaurant.com/en">Home</a></li>
                    <li class="active">contact</li>
                </ul>
            </div>
            
        </div>
    </div>
    <div class="row">
                    <div class="col-xs-12">
                        <div class="registerBox">
                            <div id="step1Account" class="step-pane step1Account" style="display: block;">
                              <div class="line1 hidden-md-down"></div>
                              <div class="registerDetailBox">
                                <div class="textHeaderStep text-center" style="margin-bottom: 20px;">
                                </div>
                                <div class="formCustomerStep">

                                    <form class="form-horizontal">

                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="UserName">UserName<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="email" id="UserName" class="form-control" placeholder="UserName *">
                                        </div>
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Address">Address<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="email" id="Address" class="form-control" placeholder="Address *">
                                        </div>
                                      </div>

                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Email">Email<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="text" id="Email" maxlength="10" class="form-control" placeholder="Email Address *">
                                        </div>
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Phone">Phone<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="text" id="Phone" class="form-control" placeholder="Phone *">
                                        </div>
                                      </div>

                                       <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Time Go">Time Go<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="text" id="TimeGo" maxlength="10" class="form-control" placeholder="Time Go *">
                                        </div>
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="amount">Amount <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-4">
                                          <input type="password" id="amount" class="form-control" placeholder="Amount">
                                        </div>
                                      </div>
                                        
                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Comment">Comment<span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-10">
                                          <textarea name="comment"  cols="60" rows="5" class="form-control"></textarea>
                                        </div>
                                      </div>  

                                      <div class="form-group row">
                                        <div class="col-xs-12 col-sm-12 text-center">
                                          <button onclick="registerEvent('next',0)" type="button" class="btnRedResponsiveMedium">Submit </button>
                                        </div>
                                      </div>

                                    </form>

                                </div>
                              </div>
                            </div>

                            <div id="step2Personal" class="step-pane step2Personal" style="display:none;">
                              <div class="line2 hidden-md-down"></div>
                              <div class="registerDetailBox">
                                <div class="textHeaderStep">
                                  <h3><span class="fontgreen">STEP 2</span> <span class="fontred">Personal Information</span></h3>
                                  <p>Please fill-in your personal information. Your birth date is essential for recovering your password. <br>
                       It is not allowed to change.</p>
                                </div>
                                <div class="formCustomerStep">
                                    <form class="form-horizontal">
                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputFirstname">First Name <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-5">
                                          <input type="text" id="inputFirstname" class="form-control" placeholder="Firstname *">
                                        </div>
                                      </div>
                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputLastname">Last Name <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-5">
                                          <input type="text" id="inputLastname" class="form-control" placeholder="Lastname *">
                                        </div>
                                      </div>

                                      <div class="form-group row">
                                        <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputBirthday">Birthday <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                        <div class="col-xs-12 col-sm-7">
                                            <ul class="list-inline">
                                              <li class="dayBHDBox p-r-0">
                                                <select class="dayBHD form-control">
                                                  <option value="">Date</option>
                                                        <option value="01">1</option>
                                                        <option value="02">2</option>
                                                        <option value="03">3</option>
                                                      
                                                  </select>
                                              </li>
                                              <li class="p-a-0">
                                                <select class="monthBHD form-control">
                                                  <option value="">Month</option>
                                                  <option value="01">January</option>
                                                  <option value="02">February</option>
                                                  <option value="03">March</option>
                                                  <option value="04">April</option>
                                                  <option value="05">May</option>
                                                  <option value="06">June</option>
                                                  <option value="07">July</option>
                                                  <option value="08">August</option>
                                                  <option value="09">September</option>
                                                  <option value="10">October</option>
                                                  <option value="11">November</option>
                                                  <option value="12">December</option>
                                                </select>
                                              </li>
                                              <li class="p-a-0">
                                                <select class="yearBHD form-control">
                                                  <option value="">Year</option>
                                                        <option value="1908">1908</option>
                                                        <option value="1907">1907</option>
                                                        <option value="1906">1906</option>
                                                        <option value="1905">1905</option>
                                                        <option value="1904">1904</option>
                                                        <option value="1903">1903</option>
                                                        <option value="1902">1902</option>
                                                        <option value="1901">1901</option>
                                                        <option value="1900">1900</option>
                                                  </select>
                                              </li>
                                            </ul>
                                            <span class="help-block">
                                              Your birth date is essential for recovering your password. It is <br>
                                  not allowed to change.                                            </span>
                                        </div>
                                      </div>
                                      <div class="form-group row">
                                        <div class="col-xs-12 col-xs-offset-0 col-sm-10 col-sm-offset-2">
                                          <button onclick="registerEvent('back',1)" type="button" class="btnBackResponsiveMedium"><img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-left" alt=""> Back</button>
                                          <button onclick="registerEvent('next',1)" type="button" class="btnRedResponsiveMedium">Next <img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-right" alt=""></button>
                                        </div>
                                      </div>
                                    </form>
                                </div>
                              </div>
                            </div>


                            <div id="step3Address" class="step-pane step3Address" style="display:none;">
                              <div class="line3 hidden-md-down"></div>
                              <div class="registerDetailBox">
                                <div class="textHeaderStep">
                                  <h3><span class="fontgreen">STEP 3</span> <span class="fontred">Delivery Information</span></h3>
                                  <p>Please provide the primary address. If your province and ampher are not in the dropdown list, which means your location is not deliverable.</p>
                                </div>
                                <div class="formCustomerStep">

                                    <div class="row">

                                      <!--================================
                                      =            Column 1            =
                                      ================================-->
                                      <div class="col-xs-12 col-md-6">

                                        <!-- Province -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputProvince">Province  <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <select id="inputProvince" class="form-control ">
                                              <option value="" selected="selected">Select Province  *</option>
                                                  <option value="1">Bangkok</option>
                                                  <option value="2">Nonthaburi</option>
                                                  <option value="3">Pathum Thani</option>
                                                  <option value="4">Samut Prakan</option>
                                                  <option value="5">Samut Sakhon</option>
                                                  <option value="6">Chiang Mai</option>
                                                  <option value="7">Chonburi</option>
                                                  <option value="8">Nakhon Pathom </option>
                                                  <option value="9">Phra Nakhon Si Ayutthaya</option>
                                                  <option value="10">Nakhon Ratchasima</option>
                                                  <option value="11">Khon Kaen</option>
                                                  <option value="12">Nakhon Pathom</option>
                                              </select>
                                          </div>
                                        </div>

                                        <!-- Aumphur -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputAumpher">Aumpher <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <select id="inputAumpher" class="form-control ">
                                              <option value="" selected="selected">Select Aumpher  *</option>
                                            </select>
                                          </div>
                                        </div>

                                        <!-- Tumbol -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputThumbol">Thumbol  <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <select id="inputThumbol" class="form-control ">
                                                <option value="" selected="selected">Select Thumbol  *</option>
                                            </select>
                                          </div>
                                        </div>

                                        <!-- Zipcode -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputZipcode">Zipcode<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputZipcode" maxlength="5" placeholder="Zipcode *">
                                          </div>
                                        </div>

                                      </div>


                                      <!--================================
                                      =            Column 2            =
                                      ================================-->
                                      <div class="col-xs-12 col-md-6">

                                        <!-- Location Type -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputLocationtype">Select Location Type<span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <select id="inputLocationtype" class="form-control ">
                                              <option value="">Location Type *</option>
                                              <option value="3">Single House</option>
                                              <option value="4">Town House</option>
                                              <option value="5">Commercial Building</option>
                                              <option value="6">School</option>
                                              <option value="7">Condominium</option>
                                              <option value="9">Village</option>
                                              <option value="10">Office Building</option>
                                              <option value="11">Townhouse</option>
                                              <option value="12">Apartment</option>
                                              <option value="13">Mansion</option>
                                              <option value="14">Company</option>
                                              <option value="15">Flat</option>
                                              <option value="16">Others</option>
                                          </select>
                                          </div>
                                        </div>

                                        <!-- Floor -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputFloor">Floor <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputFloor" placeholder="Floor">
                                          </div>
                                        </div>

                                        <!-- Building Name -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputBuildingName">Building/Vilage name <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputBuildingName" placeholder="Building/Vilage name">
                                          </div>
                                        </div>
                                        <!-- Room Number -->
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputRoomnumber">Room number <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputRoomnumber" placeholder="Room number">
                                          </div>
                                        </div>

                                      </div>

                                    </div> <!-- /.row -->


                                      <div class="form-group row  hidden-xs-down ">
                                        <label class="form-control-labelcol-xs-12 p-r-0" for="inputZipcode"><strong>Please describe your address direction in short.</strong></label>
                                      </div>
                                    <div class="row">

                                      <div class="col-xs-12">
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputAddressNumber">Address number <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-4 col-xs-6">
                                            <input type="text" class="form-control" id="inputAddressNumber" placeholder="Address number *">
                                          </div>
                                          <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputMoo">Moo <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-4 col-xs-6">
                                            <input type="text" class="form-control" id="inputMoo" placeholder="Moo">
                                          </div>
                                        </div>
                                      </div>

                                      <div class="col-xs-12 col-md-6">

                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputSoi">Soi  <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputSoi" placeholder="Soi ">
                                          </div>
                                        </div>

                                      </div>

                                      <div class="col-xs-12 col-md-6">
                                        <div class="form-group row">
                                          <label class="form-control-label hidden-xs-down col-xs-4 p-r-0" for="inputRoad">Road <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                          <div class="col-sm-8 col-xs-12">
                                            <input type="text" class="form-control" id="inputRoad" placeholder="Road">
                                          </div>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="form-group row directionGuideBox">
                                      <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="inputDirectionGuide">Direction guide  <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                                      <div class="col-sm-10 col-xs-12">
                                        <textarea id="inputDirectionGuide" placeholder="Direction guide  *" class="form-control" maxlength="2000"></textarea>
                                      </div>
                                    </div>

                                    <div class="form-group row">
                                      <div class="col-xs-12 col-xs-offset-0 col-sm-10 col-sm-offset-2">
                                        <button onclick="registerEvent('back',2)" type="button" class="btnBackResponsiveMedium"><img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-left" alt=""> Back</button>
                                        <button onclick="registerEvent('next',2)" type="button" class="btnRedResponsiveMedium">Next <img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-right" alt=""></button>
                                      </div>
                                    </div>
                                </div>
                              </div>
                            </div>


                          <div id="step4Confirm" class="step-pane step4Confirm" style="display:none;">
                            <div class="line4 hidden-md-down"></div>
                            <div class="registerDetailBox">
                              <div class="textHeaderStep">
                                <h3><span class="fontgreen">STEP 4</span> <span class="fontred">Confirm</span></h3>
                                <p>Please check your below information and then click "Confirm" button.</p>
                              </div>

                              <div class="formCustomerStep">
                                <div class="row">
                                  <div class="col-sm-6 col-xs-12">
                                    <div class="dataInformationBox1">
                                      <h4 class="fontred">Account &amp; Personal Information</h4>
                                      <table class="dataCustomerRegister">
                                        <tbody><tr>
                                          <td class="textHeaderCR fontgreen">Email Address</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showEmail" class="textDataCR"></td>
                                        </tr>
                                        <tr>
                                          <td class="textHeaderCR">Mobile Number</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showPhone" class="textDataCR"></td>
                                        </tr>
                                        <tr>
                                          <td class="textHeaderCR">Password</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showPassword" class="textDataCR"></td>
                                        </tr>
                                        <tr>
                                          <td class="textHeaderCR">Name</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showName" class="textDataCR"></td>
                                        </tr>
                                        <tr>
                                          <td class="textHeaderCR">Birthday </td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showBithday" class="textDataCR"></td>
                                        </tr>
                                      </tbody></table>
                                    </div>

                                  </div>

                                  <div class="col-sm-6 col-xs-12 lineLeftBox">
                                    <div class="dataInformationBox1">
                                      <h4 class="fontred">Delivery Informaiton </h4>
                                      <table class="dataCustomerRegister">
                                      <tbody><tr>
                                          <td class="textHeaderCR">Select Location Type</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showLocationType" class="textDataCR"></td>
                                        </tr>
                                        <tr valign="top">
                                          <td class="textHeaderCR">Building/Vilage name</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showBuildingVillage" class="textDataCR"></td>
                                        </tr>
                                        <tr valign="top">
                                          <td class="textHeaderCR">Address</td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showAddress" class="textDataCR"></td>
                                        </tr>
                                        <tr valign="top">
                                          <td class="textHeaderCR">Direction guide </td>
                                          <td class="textSemicolonCR">:</td>
                                          <td id="showDirectionGuide" class="textDataCR"></td>
                                        </tr>

                                      </tbody></table>
                                    </div>

                                  </div>
                                </div>
                                <div id="btnBox" class="form-group row">
                                  <div class="col-xs-12">
                                    <button onclick="registerEvent('back',3)" type="button" class="btnBackResponsiveMedium"><img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-left" alt=""> Back</button>
                                    <button onclick="registerEvent('confirm',3)" type="button" class="btnRedResponsiveMedium pull-right">Confirm <img src="https://www.mkrestaurant.com/img/responsive/arrow-right.png" class="btn-arrow-right" alt=""></button>
                                  </div>
                                </div>
                              </div>
                            </div>

                          </div>

                        </div>
                      <div class="clear"></div>
                    </div>
                </div>
