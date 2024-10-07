<?php include 'include/header.php'; ?>

<section class="bg-black pb-100 pt-200">
  <div class="container">
    <div class="row">
      <div class="col-md-8 mx-auto">
        <h2 class="about-banner-h">PROPERTY TO <span> RENT </span></h2>
      </div>
    </div>
  </div>
</section>
<section class="pt-pb-100">
  <div class="container">
    <h2 class="text-center mb-4">DO YOU WANT TO RENT PROPERTY?</h2>
    <p>Without professional support, selling your property in Dubai can be intimidating – fear not, we are here to help you. Our Residential Sales department is divided into teams that specialise in the city's major areas, creating a specialised approach. Combined with top tier marketing across all main portals in Dubai, we can match your property with the most promising prospects in the market.</p>
    <p>To get started, please fill out the enquiry form below and our property specialists will get in touch with you shortly.`</p>
  </div>
</section>
<section class="pt-pb-100" style="background: #0B132B;">
  <div class="container">
    <div class="text-center">
      <h2 class="text-white mb-4">FILL THE FORM</h2>
    </div>
    <div class="row">
      <div class="col-md-8 mx-auto">
        <form method="post" id="contactForm">
          <input type="hidden" id="subject" name="subject" value="PROPERTY TO SELL">
          <div class="row">
            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label text-white form-lable-name">First Name</label>
                <input type="text" class="form-control" id="f_name" name="f_name" placeholder="First Name" aria-describedby="emailHelp">
              </div>
            </div>
            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label text-white form-lable-name">Last Name</label>
                <input type="text" class="form-control" id="l_name" name="l_name" placeholder="Last Name" aria-describedby="emailHelp">
              </div>
            </div>
          </div>
          <div class="mb-3">
            <label class="form-label text-white form-lable-name">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
          </div>
          <div class="row">
            <div class="col-md-4">
              <label for="exampleInputEmail1" class="form-label text-white form-lable-name">Country Code</label>
              <select class="form-select" aria-label="Default select example">
                <option selected value="971">+971</option>
                <option value="+971">+971</option>
                <option value="+966">+966</option>
                <option value="+974">+974</option>
                <option value="+965">+965</option>
                <option value="+44">+44</option>
                <option value="+61">+61</option>
                <option value="+91">+91</option>
                <option value="+1">+1</option>
                <option value="+7">+7</option>
              </select>
            </div>
            <div class="col-md-8">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label text-white form-lable-name">Contact Number</label>
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone no" aria-describedby="emailHelp">
              </div>
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label text-white form-lable-name">Interest</label>
              <input type="text" class="form-control" id="interest" name="interest" placeholder="Interest" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
              <label class="form-label text-white form-lable-name">Details</label>
              <textarea style="height: 250px;" class="form-control" id="message" name="message" rows="3" placeholder="Your Message"></textarea>
            </div>
            <p class="text-white">This site is protected by reCAPTCHA and the Google <a href="#" class="text-white"><b>Privacy Policy</b></a> and <a href="#" class="text-white"><b>Terms of Service</b> </a> apply.</p>
          </div>
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input box-input" style="margin-left: -23px;" id="exampleCheck1">
            <label class="form-check-label text-white mt-2" for="exampleCheck1">I agree to our <a href="#" class="text-white"><b>terms & conditions</b></a> that may apply.</label>
          </div>
          <div id="msg2"></div>
          <button type="submit" name="submit" id="submit-btn2" class="btn-submit w-100 mt-4">Submit</button>
        </form>
      </div>
    </div>
  </div>
</section>

<section class="pt-4" style="background-color: #fff;">
    <div class="container pt-100 pb-200">
      <div class="row justify-content-center">
        <div class="col-md-4 text-center">
          <a href="contact.php"><button class="btn-black">BOOK A FREE CONSULTATION</button></a>
        </div>
      </div>
      <!-- <div class="col-md-3 col-7 mx-auto">
        <div class="footer-logo">
          <img src="assets/img/f-logo.png" class="img-fluid">
        </div>
      </div> -->
    </div>
</section>
<?php include 'include/footer.php'; ?>