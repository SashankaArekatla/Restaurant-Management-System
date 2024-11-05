<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>United Telugu Kitchen | Sashanka</title>
        <script src="https://kit.fontawesome.com/7a4b62b0a4.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="menu2.css?v=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/v4-shims.css">
        <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.2/css/all.css">
        <script src="timer.js"></script>
        <script src="menu2.js"></script>
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
                            <div id="badge">0</div>
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
            <div class="menu">
                <h1 class="menu">Appetizers Non Veg</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Konaseema Kodi Vepudu <img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹475</p>
                        <p class="item-description">Deep-fried boneless chicken tossed with your chosen flavour.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/3.PNG" alt="Chicken Konaseema Kodi Vepudu">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Bezawada Fried Wings(4)<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹510</p>
                        <p class="item-description">Deep-fried whole wings tossed with chopped garlic and spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/4.PNG" alt="Chicken Bezawada Fried Wings(4)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Guntur "Karam" Wings<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹520</p>
                        <p class="item-description">Deep-fried boneless chicken tossed with gun powder.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/1.PNG" alt="Chicken Guntur Karam Wings">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Rayalaseema Kodi <img src="icons/nonveg.png" alt="non-veg"></h4>
                        <p class="item-price">₹475</p>
                        <p class="item-description">Sautéed chicken tossed with chilli paste & cashew.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/5.PNG" alt="Chicken Rayalaseema Kodi ">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Fish (Murrel) Andhra Chepa Fry<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹510</p>
                        <p class="item-description">Korameenu slice deep fried and tossed with garlic & spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/6.PNG" alt="Fish (Murrel) Andhra Chepa Fry">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Appetizers Veg</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>
            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Konaseema Paneer(Karivepaku)<img src="icons/veg.png" alt="non-veg"></h4>
                        <p class="item-price">₹385</p>
                        <p class="item-description">Deep-fried diced paneer tossed in karivepaku paste, crushed pepper
                            and spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/11.PNG" alt="Chilli Paneer">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Paneer-65<img src="icons/veg.png" alt="non-veg"></h4>
                        <p class="item-price">₹385</p>
                        <p class="item-description">Deep-fried diced paneer tossed with crushed pepper and spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/12.PNG" alt="Paneer-65">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Mushroom 777 <img src="icons/veg.png" alt="non-veg"></h4>
                        <p class="item-price">₹385</p>
                        <p class="item-description">Deep-fried diced paneer tossed with crushed pepper and spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/13.PNG" alt="Mushroom 777 (Spicy)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Lotus Stem Chips(Seasonal)<img src="icons/veg.png" alt="non-veg"></h4>
                        <p class="item-price">₹385</p>
                        <p class="item-description">Deep-fried diced lotus stem tossed with crushed pepper and spices.
                        </p>
                    </div>
                    <div class="item-image">
                        <img src="cart/14.PNG" alt="Lotus Stem Chips(Seasonal)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Utk Specialties</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Prawns Tandoori Royyalu<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹560</p>
                        <p class="item-description">Crispy tiny prawns deep-fried and tossed in a flavorful blend of
                            aromatic spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/21.PNG" alt="Prawns Tandoori Royyalu">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Kodi Pops<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹540</p>
                        <p class="item-description">Juicy chicken morsels, marinated and fried, coated in a flavorful
                            spice blend.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/22.PNG" alt="Chicken Kodi Pops(Tandoori Lollipops)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Telugodi Kodi Kebab<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹520</p>
                        <p class="item-description">Succulent chicken kebabs marinated in Telugu spices and grilled.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/23.PNG" alt="Chicken Telugodi Kodi Kebab">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Dum Biryani Non - Veg</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Mutton Nalli Gosht Biryani<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹825</p>
                        <p class="item-description">Flavorful biryani with tender mutton nalli, cooked with aromatic
                            spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/31.PNG" alt="Mutton Nalli Gosht Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Bezawada Boneless Biryani<img src="icons/nonveg.png"
                                alt="non-veg">
                        </h4>
                        <p class="item-price">₹540</p>
                        <p class="item-description">Spicy chicken biryani with boneless pieces, infused with Bezawada's
                            signature flavors.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/32.PNG" alt="Chicken Bezawada Boneless Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Mutton Dum Biryani<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹660</p>
                        <p class="item-description">Aromatic mutton biryani slow-cooked to perfection, with tender, rich
                            flavors.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/33.PNG" alt="Mutton Dum Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Dum Biryani<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹510</p>
                        <p class="item-description">Aromatic chicken biryani slow-cooked to perfection, with tender,
                            flavorful layers.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/34.PNG" alt="Chicken Dum Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Ulavacharu Mamsam Biryani(Mutton)<img src="icons/nonveg.png"
                                alt="non-veg">
                        </h4>
                        <p class="item-price">₹630</p>
                        <p class="item-description">Rich mutton biryani infused with Ulavacharu, offering a hearty,
                            flavorful experience.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/35.PNG" alt="Ulavacharu Mamsam Biryani(Mutton)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Fish (Murrel) Chepa Fry Biryani<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹600</p>
                        <p class="item-description">Spiced biryani topped with crispy Murrel fish fry for a perfect
                            blend of flavor.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/36.PNG" alt="Fish (Murrel) Chepa Fry Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Dum Biryani - Veg </h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Kaju Paneer Biryani(Rayalaseema)<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹450</p>
                        <p class="item-description">Fragrant biryani with paneer and cashews, offering a rich, nutty
                            flavor.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/41.PNG" alt="Kaju Paneer Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Veg Dum Biryani<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹430</p>
                        <p class="item-description">Aromatic biryani with mixed vegetables, slow-cooked to a perfect,
                            flavorful blend.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/42.PNG" alt="Veg Dum Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Paneer Biryani<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹450</p>
                        <p class="item-description">Fragrant biryani with tender paneer, infused with aromatic spices
                            and herbs.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/35.PNG" alt="Paneer Biryani">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Main Course Non Veg</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Prawns Konaseema Royyala Koora<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹605</p>
                        <p class="item-description">Flavorful biryani with tender mutton nalli, cooked with aromatic
                            spices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/51.PNG" alt="Prawns Konaseema Royyala Koora">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Prawns Royyala Iguru<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹620</p>
                        <p class="item-description">Spicy chicken biryani with boneless pieces, infused with Bezawada's
                            signature flavors.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/52.PNG" alt="Prawns Royyala Iguru">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Kodi Pachadi Koora<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹520</p>
                        <p class="item-description">Aromatic mutton biryani slow-cooked to perfection, with tender, rich
                            flavors.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/53.PNG" alt="Chicken Kodi Pachadi Koora">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Mutton Palletoori Style Mamsam<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹560</p>
                        <p class="item-description">Aromatic chicken biryani slow-cooked to perfection, with tender,
                            flavorful layers.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/54.PNG" alt="Mutton Palletoori Style Mamsam">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Just Chicken Curry (Bone In)<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹520</p>
                        <p class="item-description">Rich mutton biryani infused with Ulavacharu, offering a hearty,
                            flavorful experience.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/55.PNG" alt="Just Chicken Curry (Bone In)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chicken Utk Wings Masala<img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹520</p>
                        <p class="item-description">Spiced biryani topped with crispy Murrel fish fry for a perfect
                            blend of flavor.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/56.PNG" alt="Chicken Utk Wings Masala">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Egg Gudivada Guddu Pulusu <img src="icons/nonveg.png" alt="non-veg">
                        </h4>
                        <p class="item-price">₹430</p>
                        <p class="item-description">Spiced biryani topped with crispy Murrel fish fry for a perfect
                            blend of flavor.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/57.PNG" alt="Egg Gudivada Guddu Pulusu ">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Main Course Veg</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Palasa Kaju Masala Koora<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹440</p>
                        <p class="item-description">Palasa and cashews cooked in a rich, spicy, and aromatic masala
                            gravy.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/61.PNG" alt="Palasa Kaju Masala Koora">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Gongura Paneer<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹460</p>
                        <p class="item-description">Paneer cooked with tangy gongura in a flavorful, spicy gravy.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/62.PNG" alt="Gongura Paneer">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Mushroom Masala<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹440</p>
                        <p class="item-description">Mushrooms sautéed in a rich, spiced masala for a hearty, flavorful
                            dish.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/63.PNG" alt="Mushroom Masala">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Bread Basket</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Naan<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹85</p>
                        <p class="item-description">Fluffy and soft naan, baked to perfection with a hint of char for a
                            delicious, warm accompaniment.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/81.PNG" alt="Naan">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Chapati (2 Pcs)<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹95</p>
                        <p class="item-description">Two soft, freshly made chapatis, perfect for pairing with any curry
                            or dish.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/82.PNG" alt="Chapati (2 Pcs)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Tandoori Roti<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹80</p>
                        <p class="item-description">Soft and crispy tandoori roti, baked to perfection in a traditional
                            tandoor.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/83.PNG" alt="Tandoori Roti">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
            <div class="menu">
                <h1 class="menu">Desserts</h1>
                <img src="images/line.png" alt="Menu Image" class="menu-image" />
            </div>

            <div class="modal">
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Kevvu Keka (Gulab Jamun & Rabdi)<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹230</p>
                        <p class="item-description">Gulab Jamun served with rich, creamy rabdi for a delightful
                            experience.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/71.PNG" alt="Kevvu Keka (Gulab Jamun & Rabdi)">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>

                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Utk Malai Sandwich<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹230</p>
                        <p class="item-description">Delicious Utk Malai Sandwich with creamy, flavorful malai spread
                            between soft, toasted bread slices.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/72.PNG" alt="Utk Malai Sandwich">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
                <div class="menu-item">
                    <div class="item-info">
                        <h4 class="item-name">Carrot Halwa<img src="icons/veg.png" alt="veg">
                        </h4>
                        <p class="item-price">₹200</p>
                        <p class="item-description">Sweet, creamy carrot halwa, slow-cooked with ghee, milk, and
                            cardamom for a rich, indulgent dessert.</p>
                    </div>
                    <div class="item-image">
                        <img src="cart/73.PNG" alt="Carrot Halwa">
                        <button class="add-to-cart">ADD</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="bttm">
            <h1 class="delivery-call">For Door Step Delivery Call - <a href="tel:+919966986111"><u>+91 99 66 986
                        111</u></a>
            </h1>
            <img src="images/line.png" alt="Delivery Image" class="delivery-image" />
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