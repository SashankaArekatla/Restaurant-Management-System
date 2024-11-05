<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>United Telugu Kitchen | Sashanka</title>
    <script src="https://kit.fontawesome.com/7a4b62b0a4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="contactstyle.css?v=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/v4-shims.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.2/css/all.css">
    <script src="timer.js"></script>
  </head>

  <body>
    <nav>
      <div class="navigation container">
        <div class="logo_container">
          <a href="index.jsp"><img src="images/logo.png" alt="logo" /></a>
        </div>

        <!-- Hamburger Menu Icon -->
        <div class="menu-toggle" id="menu-toggle">
          <i class="fa-regular fa-bars"></i>
        </div>

        <section class="ggs" id="nav-links">
          <div class="gg">
            <ul>
              <a href="index.jsp" class="underline-on-hover">
                <h2>Home</h2>
              </a>
            </ul>
          </div>
          <% if (session.getAttribute("loggedInUser") !=null) { %>
            <div class="gg">
              <ul>
                <a href="about.jsp" class="underline-on-hover">
                  <h2>Who we are</h2>
                </a>
              </ul>
            </div>
            <div class="gg">
              <ul>
                <a href="menu.jsp" class="underline-on-hover">
                  <h2>Menu</h2>
                </a>
              </ul>
            </div>
            <div class="gg">
              <ul>
                <a href="contact.jsp" class="underline-on-hover">
                  <h2>Contact Us</h2>
                </a>
              </ul>
            </div>
            <% } %>

              <% if (session.getAttribute("loggedInUser") !=null) { %>
                <div class="gg">
                  <ul>
                    <!-- Display user greeting with dropdown for logout -->
                    <div class="user_greeting">
                      <a>
                        <h2>Hello, <%= session.getAttribute("loggedInUser") %>
                        </h2>
                      </a>
                      <div class="dropdown_content">
                        <div class="dropdown_indicator"></div>
                        <div class="dropdown_indicator_line"></div>
                        <a href="menu2.jsp">Menu</a>
                        <a href="logout.jsp">Logout</a>
                      </div>
                    </div>
                  </ul>
                </div>
                <% } else { %>
                  <div class="gg">
                    <ul>
                      <!-- Show sign-in link only if not logged in -->
                      <a href="log.html" class="underline-on-hover">
                        <h2>Sign in</h2>
                      </a>
                    </ul>
                  </div>
                  <% } %>
        </section>
        <% if (session.getAttribute("loggedInUser") !=null) { %>
          <div class="gg">
            <a>
              <span id="cart"><i class="fa-regular fa-cart-shopping"></i></span>
              <div id="badge"> 0 </div>
            </a>
          </div>
          <div class="gg">
            <span id="session-timer">Session <i class="fa-regular fa-hourglass"></i> : <br>
              <span class="time-part" id="minutes">00</span> m :
              <span class="time-part" id="seconds">00</span> s
            </span>
          </div>
          <% } %>
      </div>
    </nav>


    <div class="contactus">
      <h1 class="contact-us">Contact Us</h1>
    </div>
    <div class="container">
      <div class="contactusimg">
        <img src="images/line.png" alt="line" />
      </div>
      <div class="contactus-text">
        <div>Feel free to reach us at our location or dial us on the mobile</div>
        <div>phone via methods mentioned below.</div><br><br><br><br><br>
      </div>
    </div>


    <div class="contact-form">
      <div class="containers">
        <div class="warn-alert">Please Fill the form below to get in touch with us</div>
        <form class="custom-form" id="custom-form" name="contact-form" method="post" action="processContact.jsp">
          <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Name*</label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="name" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1" class="form-label">Mobile Number*</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="phone" required>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail2" class="form-label">Email*</label>
            <input type="email" class="form-control" id="exampleInputEmail2" name="email" required>
          </div>
          <div class="row">

            <div class="form-group">
              <label for="exampleInputEmail3" class="form-label">Choose Location*</label>
              <select class="form-control" name="location" required>
                <option value="Vijayawada" selected>Vijayawada</option>
              </select>
            </div>


            <div class="form-group">
              <label for="exampleInputEmail4" class="form-label">Enquiry For*</label>
              <select class="form-control" name="enquiry" required>
                <option value="Reservation" selected>Reservation</option>
                <option value="Complaint">Complaint</option>
                <option value="Feedback">Feedback</option>
                <option value="Franchise">Franchise</option>
              </select>
            </div>

          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Message</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="message"></textarea>
          </div>
          <div class="text-center">
            <button type="submit" id="submit-form" class="submit-btn">Submit</button>
          </div>
        </form>
      </div>
      <div class="row">
        <div class="col">
          <div class="map-container">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15301.653474312043!2d80.647485!3d16.505216!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdc44e5c0a9cde5b5!2sUnited%20Telugu%20Kitchens%20(UTK)!5e0!3m2!1sen!2sin!4v1646114033208!5m2!1sen!2sin"
              height="450" frameborder="0" style="border:0;" allowfullscreen="" loading="lazy">
            </iframe>
          </div>
        </div>
      </div>
      <div class="address">
        <p>40-6-21B, Revenue Colony Park Road, Siddartha<br> Nagar, Vijayawada, Andhra Pradesh, India 520010</p>
      </div>
      <div class="phone">
        <p><i class="fa-light fa-phone"></i> <a href="tel:+919912000777">+91-9912000777</a></p>
      </div>
    </div>





    <footer>
      <div class="footer_container container">
        <div class="footer_logo">
          <img src="images/logo2.png" alt="logo" class="footer_logo_img" />
        </div>
        <div class="link_lists">
          <h3>Contact</h3>
          <ul>
            <li><a href="contact.jsp" style="color: white;">Contact Us</a></li>
            <li>News & Blogs</li>
          </ul>
        </div>
        <div class="link_lists">
          <h3>Support</h3>
          <ul>
            <li><a href="about.jsp" style="color: white;">About Us</a></li>
            <li>Privacy Policy</li>
            <li>Terms & Conditons</li>
          </ul>
        </div>
        <div class="news_letter">
          <h3>LET'S CONNECT</h3>
          <div class="icon_container">
            <div class="icon">
              <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
            </div>
            <div class="icon">
              <a href="https://x.com/?lang=en"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
            <div class="icon">
              <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="icon">
              <a href="https://www.youtube.com/"><i class="fa fa-youtube" aria-hidden="true"></i></a>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!--<script src="https://www.google.com/recaptcha/api.js" async defer></script>-->
    <!-- back to top button-->
    <button id="back-to-top-btn" onclick="smoothScrollBackToTop()">
      <i class="fa-regular fa-arrow-up"></i>
    </button>
    <script>
      const backToTopButton = document.querySelector("#back-to-top-btn");

      window.addEventListener("scroll", scrollFunction);

      function scrollFunction() {
        if (window.pageYOffset > 300) {
          if (!backToTopButton.classList.contains("btnEntrance")) {
            backToTopButton.classList.remove("btnExit");
            backToTopButton.classList.add("btnEntrance");
            backToTopButton.style.display = "flex";
            backToTopButton.style.opacity = "1";
          }
        } else {
          if (backToTopButton.classList.contains("btnEntrance")) {
            backToTopButton.classList.remove("btnEntrance");
            backToTopButton.classList.add("btnExit");
            backToTopButton.style.opacity = "0";
            setTimeout(function () {
              backToTopButton.style.display = "none";
            }, 250);
          }
        }
      }

      function smoothScrollBackToTop() {
        const targetPosition = 0;
        const startPosition = window.pageYOffset;
        const distance = targetPosition - startPosition;
        const duration = 750;
        let start = null;

        window.requestAnimationFrame(step);

        function step(timestamp) {
          if (!start) start = timestamp;
          const progress = timestamp - start;
          window.scrollTo(
            0,
            easeInOutCubic(progress, startPosition, distance, duration)
          );
          if (progress < duration) window.requestAnimationFrame(step);
        }
      }

      function easeInOutCubic(t, b, c, d) {
        t /= d / 2;
        if (t < 1) return (c / 2) * t * t * t + b;
        t -= 2;
        return (c / 2) * (t * t * t + 2) + b;
      }
    </script>
    <!-- back to top button end-->
    <!-- back button-->
    <button id="backButton">
      <i class="fa-regular fa-arrow-left"></i>
    </button>
    <script>
      function addPageToHistory() {
        const currentPage = window.location.href;
        let history = JSON.parse(localStorage.getItem('pageHistory')) || [];

        if (history.length === 0 || history[history.length - 1] !== currentPage) {
          history.push(currentPage);
          localStorage.setItem('pageHistory', JSON.stringify(history));
        }
      }

      function goBack() {
        let history = JSON.parse(localStorage.getItem('pageHistory')) || [];

        history.pop();

        const previousPage = history.pop() || 'index.jsp';

        localStorage.setItem('pageHistory', JSON.stringify(history));

        window.location.href = previousPage;
      }

      window.onload = addPageToHistory;

      window.addEventListener('popstate', addPageToHistory);

      document.getElementById('backButton').addEventListener('click', goBack);

      document.querySelectorAll('a').forEach(link => {
        link.addEventListener('click', () => {
          addPageToHistory();
        });
      });
    </script>
    <!-- back button end-->
    <button id="homeButton" onclick="location.href='index.jsp'">
      <i class="fa-regular fa-house"></i>
    </button>

    <script>
      document.addEventListener('DOMContentLoaded', () => {
        const menuToggle = document.getElementById('menu-toggle');
        const navLinks = document.getElementById('nav-links');

        menuToggle.addEventListener('click', () => {
          navLinks.classList.toggle('active');
          menuToggle.classList.toggle('active');
        });
      });

    </script>

  </body>

  </html>