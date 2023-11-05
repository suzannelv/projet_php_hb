// Function to animate the counter
function animateCounter(targetElement, startValue, endValue, duration) {
    const range = endValue - startValue;
    const increment = range / (duration / 10); // Change the counter every 10ms

    let currentValue = startValue;
    const interval = setInterval(() => {
        currentValue += increment;
        targetElement.textContent = Math.round(currentValue);

        if (currentValue >= endValue) {
            targetElement.textContent = endValue;
            clearInterval(interval);
        }
    }, 10);
}

// Function to handle intersection events
function handleIntersection(entries, observer) {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            const targetValue = parseInt(entry.target.dataset.target, 10);
            animateCounter(entry.target, 0, targetValue, 1000); // Animation duration: 1000ms (1 second)
            observer.unobserve(entry.target); // Stop observing once animated
        }
    });
}

document.addEventListener("DOMContentLoaded", function () {
    // Get all elements with class "counter"
    const counters = document.querySelectorAll(".counter");

    // Initialize Intersection Observer
    const options = {
        threshold: 0.2, // The element will trigger the animation when 20% visible
    };
    const observer = new IntersectionObserver(handleIntersection, options);

    // Observe each counter element
    counters.forEach((counter) => {
        observer.observe(counter);
    });
});
