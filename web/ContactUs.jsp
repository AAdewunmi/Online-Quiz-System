<%-- 
    Document   : ContactUs
    Created on : 10 May 2022, 11:41:03
    Author     : adrianadewunmi
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Contact Us!</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="contactUSCSS.css"/>
        <link rel="stylesheet" href="indexStyle.css"/>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
         <img src="circle_red_letter.png" alt="" width="30" height="24">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
              </li>
            </ul>
            
          </div>
        </div>
       </nav> 
        <!-- Contact Us Section -->
        <section class="contact-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="section-title">
                            <h2>Contact Us</h2>
                            <p>Drop your inquiry here and our experts will get back to you!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <form action="/" class="mb-4 mb-lg-0">
                            <div class="form-row">
                                <div class="col-md-6 form-group">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" />
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" />
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" />
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" placeholder="Type Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-light">Contact Now</button>
                        </form>
                    </div>

                    <div class="col-lg-5">
                        <div class="map">
                           
                            <iframe src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="350" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
                 <h3>Address</h3>
         </div>
        <div class="container">
            <div class="row">
                 <div class="col-md-6">
                        <address>
                            <strong>
                                New York City
                            </strong>
                            <br>
                            754 9th Ave At 51st Street,  <br>
                            New York City, NY 10019-8419<br>
                            <abbr title="Telephone">T:</abbr> <a href="tel: +1 212-977-1588">+1 212-977-1588</a> <br>
                            <abbr title="Mail">M:</abbr><a href="mailto: info@examily.com">info@examily.com</a><br>
                        </address>
                </div>
                <div class="col-md-6">
                </div>
                </div>
        </div>
        <div class="footer">
            <footer>
                 © 2022 Examily, Inc. 
            </footer>
        </div>
        <!-- End Contact Us Section -->
         <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    </body>
</html>

