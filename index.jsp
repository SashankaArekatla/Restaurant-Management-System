<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>United Telugu Kitchen | Sashanka</title>
        <link rel="stylesheet" href="style.css?v=1">
        <script src="https://kit.fontawesome.com/7a4b62b0a4.js" crossorigin="anonymous"></script>
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

        <div class="container">
            <div class="hero">
                <div class="hero_image">
                    <img src="images/barre.png" alt="hero image" />
                </div>
                <div class="hero_content">
                    <h1>Mana Bhasha.<br>Mana Bhojanam.</h1>
                    <p>
                        United Telugu Kitchens is a hotspot of culture,<br>diversity and authentic cuisine that is
                        rooted in<br>the folk and folklore of our iconic nation.
                    </p>
                    <a href="menu2.jsp">
                        <button class="explore_btn" style="font-family: 'Roboto Slab', serif;">ORDER NOW</button>
                    </a>
                </div>
            </div>

            <div class="divider"></div>
            <div class="menu">
                <h1 class="gallery">Gallery</h1>
                <img src="images/line.png" alt="Gallery Image" class="gallery-image" />

                <div class="grid">
                    <div class="item1">
                        <img class="grid-image" src="images/grid_image1.jpg" alt="image 1" />
                    </div>
                    <div class="item2">
                        <img class="grid-image" src="images/grid_image2.png" alt="image 2" />
                    </div>
                    <div class="item3">
                        <img class="grid-image" src="images/grid_image3.png" alt="image 3" />
                    </div>
                    <div class="item4">
                        <img class="grid-image" src="images/grid_image4.jpg" alt="image 4" />
                    </div>
                    <div class="item5">
                        <img class="grid-image" src="images/grid_image5.jpg" alt="image 5" />
                    </div>
                    <div class="item6">
                        <img class="grid-image" src="images/grid_image6.jpg" alt="image 6" />
                    </div>
                    <div class="item7">
                        <img class="grid-image" src="images/grid_image7.png" alt="image 7" />
                    </div>
                </div>
            </div>

            <div class="containers">
                <div class="contents-wraper">
                    <section class="header">
                        <h1>Reviews</h1>
                    </section>
                    <div class="reviewimg"><img src="images/line.png" alt="line" /></div>
                    <section class="testRow">
                        <div class="testItem active">
                            <p>One of the best places I've ever visited in Hyderabad. Great Ambiance, Tasty Food, and
                                the best part is Crazy Cocktail names which was very hard to select coz I wanted to try
                                each and everything!</p>
                            <h6>- Chanukya Srinivas</h6>
                        </div>
                        <div class="testItem">
                            <p>First time in Telugu states and YOU have to go! It’s the cutest spot with amazing food.
                                The food is to die for. IT WAS FIRE!! The service we received was so amazing and we will
                                definitely be back again.</p>
                            <h6>- Bhuvaneshvari Reddy</h6>
                        </div>
                        <div class="testItem">
                            <p>Fusion gourmet cuisine, fabulous appetizers, main course items, and excellent desserts.
                                Crispy corn, Manchurian fried rice, kofta curry, roti, and even Sambar rice is done
                                right here. Don't want to miss the desserts. Cozy ambiance and a great place for small
                                gatherings as well as big family outings.</p>
                            <h6>- Ravindra Pindikura</h6>
                        </div>
                        <div class="testItem">
                            <p>First of all the ambience was tooo good and coming to food taste was ultimately
                                satisfying we can spend good time there having delicious food.</p>
                            <h6>- Rajarathnam Dhatrika</h6>
                        </div>
                        <div class="testItem">
                            <p>Absolutely in love with the place, the aesthetic and the vibe. Delicious food and great
                                service! Highly recommend.</p>
                            <h6>- Sai Kakarala</h6>
                        </div>
                    </section>
                    <section class="indicators">
                        <div class="dot active" attr='0' onclick="switchTest(this)"></div>
                        <div class="dot" attr='1' onclick="switchTest(this)"></div>
                        <div class="dot" attr='2' onclick="switchTest(this)"></div>
                        <div class="dot" attr='3' onclick="switchTest(this)"></div>
                        <div class="dot" attr='4' onclick="switchTest(this)"></div>
                    </section>
                </div>
            </div>

        </div>

        <!-- Footer section -->
        <footer>
            <div class="footer_container container">
                <div class="footer_logo">
                    <img src="images/logo2.png" alt="logo" class="footer_logo_img" />
                </div>
                <div class="link_lists">
                    <h3>CONTACT</h3>
                    <ul>
                        <li><a href="contact.jsp" style="color: white;">Contact Us</a></li>
                        <li>News & Blogs</li>
                    </ul>
                </div>
                <div class="link_lists">
                    <h3>SUPPORT</h3>
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

        <!-- JavaScript for reviews -->
        <script type="text/javascript">
            let testSlide = document.querySelectorAll('.testItem');
            let dots = document.querySelectorAll('.dot');

            var counter = 0;

            function switchTest(currentTest) {
                currentTest.classList.add('active');
                var testId = currentTest.getAttribute('attr');
                if (testId > counter) {
                    testSlide[counter].style.animation = 'next1 0.5s ease-in forwards';
                    counter = testId;
                    testSlide[counter].style.animation = 'next2 0.5s ease-in forwards';
                }
                else if (testId == counter) { return; }
                else {
                    testSlide[counter].style.animation = 'prev1 0.5s ease-in forwards';
                    counter = testId;
                    testSlide[counter].style.animation = 'prev2 0.5s ease-in forwards';
                }
                indicators();
            }

            function indicators() {
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(' active', '');
                }
                dots[counter].className += ' active';
            }

            function slideNext() {
                testSlide[counter].style.animation = 'next1 0.5s ease-in forwards';
                if (counter >= testSlide.length - 1) {
                    counter = 0;
                }
                else {
                    counter++;
                }
                testSlide[counter].style.animation = 'next2 0.5s ease-in forwards';
                indicators();
            }
            function autoSliding() {
                deleteInterval = setInterval(timer, 4000);
                function timer() {
                    slideNext();
                    indicators();
                }
            }
            autoSliding();

            const container = document.querySelector('.indicators');
            container.addEventListener('mouseover', pause);
            function pause() {
                clearInterval(deleteInterval);
            }
            container.addEventListener('mouseout', autoSliding);
        </script>
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