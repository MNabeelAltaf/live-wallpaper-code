const state = {};
const carouselList = document.querySelector('.carousel__list');
const carouselItems = document.querySelectorAll('.carousel__item');
const elems = Array.from(carouselItems);

// Function to make the carousel infinitely scrollable
const update = function(newActive) {
  const newActivePos = newActive.dataset.pos;

  const current = elems.find((elem) => elem.dataset.pos == 0);
  const prev = elems.find((elem) => elem.dataset.pos == -1);
  const next = elems.find((elem) => elem.dataset.pos == 1);
  const first = elems.find((elem) => elem.dataset.pos == -2);
  const last = elems.find((elem) => elem.dataset.pos == 2);

  current.classList.remove('carousel__item_active');

  // Update the positions for infinite scrolling
  [current, prev, next, first, last].forEach(item => {
    var itemPos = parseInt(item.dataset.pos);
    item.dataset.pos = getPos(itemPos, newActivePos);
  });

  // Add active class to the new item
  newActive.classList.add('carousel__item_active');
};

// Function to get the new position based on the active position
const getPos = function (current, active) {
  const diff = current - active;

  // If the difference is greater than 2 or less than -2, reset the position to make the carousel move infinitely
  if (Math.abs(diff) > 2) {
    return current > active ? -2 : 2;
  }

  return diff;
};

// Event listener for manual item click
carouselList.addEventListener('click', function (event) {
  var newActive = event.target;
  var isItem = newActive.closest('.carousel__item');

  if (!isItem || newActive.classList.contains('carousel__item_active')) {
    return;
  };

  update(newActive);
});

// Function to automatically move carousel in an infinite loop
const autoMoveCarousel = function() {
  const current = elems.find((elem) => elem.dataset.pos == 0);
  const next = elems.find((elem) => elem.dataset.pos == 1);

  // Trigger a click-like event to move to the next item
  update(next);
};

// Start the infinite automatic scroll
setInterval(autoMoveCarousel, 3000);  // Adjust the interval (3000ms) for the speed of movement
