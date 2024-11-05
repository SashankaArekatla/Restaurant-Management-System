document.addEventListener('DOMContentLoaded', function () {
    const badge = document.getElementById('badge');
    
    setCookie('counter', 0, 7);
    
    let counter = parseInt(getCookie('counter'), 10) || 0;
    
    badge.textContent = counter;

    function updateBadge() {
        counter += 1;
        badge.textContent = counter;
        
        setCookie('counter', counter, 7);
    }

    const addToCartButtons = document.querySelectorAll('.add-to-cart');
    addToCartButtons.forEach(button => {
        button.addEventListener('click', function () {
            updateBadge();
            addToCart(this.dataset.itemId);
        });
    });
});

function addToCart(itemId) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.push(itemId);
    localStorage.setItem('cart', JSON.stringify(cart));
}

function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) {
        return parts.pop().split(';').shift();
    }
    return null;
}

function setCookie(name, value, days) {
    let expires = "";
    if (days) {
        const date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + value + expires + "; path=/";
}
