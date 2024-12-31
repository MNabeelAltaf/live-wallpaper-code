<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header justify-content-between d-flex align-items-center">
                <h4 class="card-title">Advance Options</h4>
            </div>


            <div class="card-body">
                <form action="{{ route('wallpapers.advance_options_data') }}" method="POST" id=advance-options-form>
                    @csrf
                    <table>
                        <tbody id="sortable-container">
                            <tr id="category-container">
                                {{-- Category sections --}}
                                <td>
                                    <div class="col-xl-6 mt-2">
                                        <label for="formFileLg" class="form-label"
                                            title="Visibility of Category Row in App." data-bs-toggle="tooltip"
                                            data-bs-placement="right" title="Visibility Category Row in App.">
                                            Category visibility
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                <path
                                                    d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                            </svg>
                                        </label>



                                        <div class="form-check form-switch form-switch-lg mb-0" dir="ltr">
                                            <input type="checkbox" name="category_visibility" class="form-check-input"
                                                id="customSwitchsizelg"
                                                {{ isset($static_advance_options['category_visibility']) && $static_advance_options['category_visibility'] == 1 ? 'checked' : '' }}>
                                            <label class="form-check-label" for="customSwitchsizelg">Show/Hide</label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class=" my-5 more-options" style="display: block;">
                                        <div class="row">
                                            <div class="col-md-4 append-dropdown">

                                                <template id="dropdown-template">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-light dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-haspopup="true"
                                                            aria-expanded="false">
                                                            Set Order (<span class="selected-order">-</span>)
                                                            <i class="mdi mdi-chevron-down"></i>
                                                        </button>
                                                        <div class="dropdown-menu order-dropdown">
                                                            <button class="dropdown-item" type="button"
                                                                data-value="1">1</button>
                                                            <button class="dropdown-item" type="button"
                                                                data-value="2">2</button>
                                                            <button class="dropdown-item" type="button"
                                                                data-value="3">3</button>
                                                            <button class="dropdown-item" type="button"
                                                                data-value="4">4</button>
                                                            <button class="dropdown-item" type="button"
                                                                data-value="5">5</button>
                                                        </div>
                                                        <input type="hidden" class="order-input" name="">
                                                    </div>
                                                </template>


                                            </div>
                                            <div class="col-md-4">
                                                <div>
                                                    <h5 class="font-size-13 text-uppercase text-muted mb-4">
                                                        <i class="mdi mdi-chevron-right text-primary me-1"></i> Show
                                                        Records
                                                        according
                                                        to
                                                    </h5>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" type="radio" name="option_1"
                                                            id="formRadios1" value="likes"
                                                            {{ (isset($static_advance_options['option_1']) && $static_advance_options['option_1'] == 'likes') || !isset($static_advance_options['option_1']) ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios1">
                                                            Likes
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="option_1"
                                                            id="formRadios2" value="downloads"
                                                            {{ isset($static_advance_options['option_1']) && $static_advance_options['option_1'] == 'downloads' ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios2">
                                                            Downloads
                                                        </label>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-md-4">
                                                <div>
                                                    <h5 class="font-size-13 text-uppercase text-muted mb-4"><i
                                                            class="mdi mdi-chevron-right text-primary me-1"></i>
                                                        Show
                                                        Records in
                                                    </h5>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" type="radio" name="option_2"
                                                            value="asc" id="formRadios1"
                                                            {{ (isset($static_advance_options['option_2']) && $static_advance_options['option_2'] == 'asc') || !isset($static_advance_options['option_2']) ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios1">
                                                            Ascending order
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" value="desc"
                                                            name="option_2" id="formRadios2"
                                                            {{ isset($static_advance_options['option_2']) && $static_advance_options['option_2'] == 'desc' ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios2">
                                                            Descending order
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {{-- ----------------------------------------- --}}
                            {{-- Events section --}}
                            <tr id="events-container">
                                <td>
                                    <div class="col-xl-6 mt-2">
                                        <label for="formFileLg" class="form-label"
                                            title="Visibility of Events Row in App." data-bs-toggle="tooltip"
                                            data-bs-placement="right" title="Visibility of Events Row in App.">
                                            Events visibility
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                <path
                                                    d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                            </svg>
                                        </label>
                                        <div class="form-check form-switch form-switch-lg mb-0" dir="ltr">
                                            <input type="checkbox" name="events_visibility" class="form-check-input"
                                                id="event_visibility"
                                                {{ isset($static_advance_options['events_visibility']) && $static_advance_options['events_visibility'] == 1 ? 'checked' : '' }}>

                                            <label class="form-check-label" for="customSwitchsizelg">Show/Hide</label>
                                        </div>
                                    </div>
                                    <div class=" my-5 events_more_options" style="display: block;">
                                        <div class="row">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="">
                                                        <div
                                                            class="card-header justify-content-between d-flex align-items-center">
                                                            <h4 class="card-title">Events</h4>
                                                            <div
                                                                class="d-flex flex-wrap align-items-start justify-content-md-end mt-2 mt-md-0 gap-2 mb-3">
                                                                <div>
                                                                    <a href="{{ route('events.index') }}"
                                                                        class="btn btn-light"><i
                                                                            class="uil uil-plus me-1"></i>
                                                                        Add/Edit Event</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 append-dropdown">
                                                        </div>
                                                        <div class="card-body">
                                                            <div id="gridjs-table"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.4.0/axios.min.js"></script>
                                            <script>
                                                new gridjs.Grid({
                                                    columns: [
                                                        'ID',
                                                        'Name',
                                                        'start_date',
                                                        'end_date',

                                                    ],
                                                    data: <?php echo json_encode($data); ?>,
                                                    search: true,
                                                    pagination: {
                                                        limit: 10
                                                    },
                                                    sort: true,
                                                    language: {
                                                        search: {
                                                            placeholder: 'Search...'
                                                        },
                                                    }
                                                }).render(document.getElementById('gridjs-table'));
                                                flatpickr(".pickers")

                                                function editEvent(id) {
                                                    axios.get(`/events/${id}/edit`)
                                                        .then(response => {
                                                            // console.log(response.data.id);

                                                            const event = response.data;
                                                            document.getElementById('eventsId').value = event.id;
                                                            document.getElementById('editEventName').value = event.name;

                                                            flatpickr("#start_date", {
                                                                defaultDate: event.start_date
                                                            });
                                                            flatpickr("#end_date", {
                                                                defaultDate: event.end_date
                                                            });

                                                            const selectedCategories = event.categories.map(category => category.id);
                                                            const categorySelect = document.getElementById('selectedCategory');

                                                            Array.from(categorySelect.options).forEach(option => {
                                                                if (selectedCategories.includes(parseInt(option.value))) {
                                                                    option.selected = true;
                                                                }
                                                            });
                                                            const choices = new Choices('#selectedCategory', {
                                                                removeItemButton: true,
                                                                placeholder: true,
                                                                searchEnabled: true
                                                            });

                                                            const modal = new bootstrap.Modal(document.getElementById('editEventModal'));
                                                            modal.show();
                                                        })
                                                        .catch(error => {
                                                            console.error('Error fetching event data:', error);
                                                            alert('Failed to load event data.');
                                                        });
                                                }

                                                function deleteEvents(id) {
                                                    Swal.fire({
                                                        title: "Are you sure?",
                                                        text: "You won't be able to revert this!",
                                                        icon: "warning",
                                                        showCancelButton: true,
                                                        confirmButtonColor: "#51d28c",
                                                        cancelButtonColor: "#f34e4e",
                                                        confirmButtonText: "Yes, delete it!",
                                                    }).then(function(t) {
                                                        if (t.value) {
                                                            axios.get(`/events/${id}/delete`)
                                                                .then(response => {
                                                                    location.reload();
                                                                })
                                                                .catch(error => {
                                                                    console.error('Error deleting category:', error);
                                                                    Swal.fire(
                                                                        "Error!",
                                                                        "Failed to delete the category.",
                                                                        "error"
                                                                    );
                                                                });
                                                        }
                                                    });
                                                }
                                            </script>

                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {{-- ----------------------------------------- --}}
                            {{-- Featured section --}}
                            <tr id="featured-container">
                                <td>
                                    <div class="col-xl-6 mt-2">
                                        <label for="formFileLg" class="form-label"
                                            title="Visibility of Featured Row in App." data-bs-toggle="tooltip"
                                            data-bs-placement="right" title="Visibility of Featured Row in App.">
                                            Featured visibility
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                <path
                                                    d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                            </svg>
                                        </label>
                                        <div class="form-check form-switch form-switch-lg mb-0" dir="ltr">
                                            <input type="checkbox" name="featured_visibility"
                                                class="form-check-input"
                                                {{ isset($static_advance_options['featured_visibility']) && $static_advance_options['featured_visibility'] == 1 ? 'checked' : '' }}
                                                id="featured_visibility">
                                            <label class="form-check-label" for="customSwitchsizelg">Show/Hide</label>
                                        </div>
                                    </div>
                                    <div class=" my-5 featured_more_options" style="display: block;">
                                        <div class="col-md-4 append-dropdown">

                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {{-- ----------------------------------------- --}}
                            {{-- Trending section --}}
                            <tr id="trending-container">
                                <td>
                                    <div class="col-xl-6 mt-2">
                                        <label for="formFileLg" class="form-label"
                                            title="Visibility of Trending Row in App." data-bs-toggle="tooltip"
                                            data-bs-placement="right" title="Visibility of Trending Row in App.">
                                            Trending visibility
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                <path
                                                    d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                            </svg>
                                        </label>
                                        <div class="form-check form-switch form-switch-lg mb-0" dir="ltr">
                                            <input type="checkbox" name="trending_visibility"
                                                class="form-check-input"
                                                {{ isset($static_advance_options['trending_visibility']) && $static_advance_options['trending_visibility'] == 1 ? 'checked' : '' }}
                                                id="trending_visibility">
                                            <label class="form-check-label" for="customSwitchsizelg">Show/Hide</label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class=" my-5 trending-more-options" style="display: block;">
                                        <div class="row">
                                            <div class="col-md-4 append-dropdown">

                                            </div>
                                            <div class="col-md-4">
                                                <div>
                                                    <h5 class="font-size-13 text-uppercase text-muted mb-4">
                                                        <i class="mdi mdi-chevron-right text-primary me-1"></i>
                                                        Show
                                                        Records
                                                        according
                                                        to
                                                    </h5>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" type="radio"
                                                            name="trending_option_1" id="formRadios1" value="likes"
                                                            {{ isset($static_advance_options['trending_option_1']) && $static_advance_options['trending_option_1'] == 'likes' ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios1">
                                                            Likes
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio"
                                                            name="trending_option_1" id="formRadios2"
                                                            value="downloads"
                                                            {{ (isset($static_advance_options['trending_option_1']) && $static_advance_options['trending_option_1'] == 'downloads') || !isset($static_advance_options['trending_option_1']) ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios2">
                                                            Downloads
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div>
                                                    <h5 class="font-size-13 text-uppercase text-muted mb-4"><i
                                                            class="mdi mdi-chevron-right text-primary me-1"></i>
                                                        Show
                                                        Records
                                                        in
                                                    </h5>
                                                    <div class="form-check mb-2">
                                                        <input class="form-check-input" type="radio"
                                                            name="trending_option_2" value="asc" id="formRadios1"
                                                            {{ (isset($static_advance_options['trending_option_2']) && $static_advance_options['trending_option_2'] == 'asc') || !isset($static_advance_options['trending_option_2']) ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios1">
                                                            Ascending order
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" value="desc"
                                                            name="trending_option_2" id="formRadios2"
                                                            {{ isset($static_advance_options['trending_option_2']) && $static_advance_options['trending_option_2'] == 'desc' ? 'checked' : '' }}>
                                                        <label class="form-check-label" for="formRadios2">
                                                            Descending order
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {{-- ----------------------------------------- --}}
                            {{-- new wallpaper visibility --}}
                            <tr id="new-wlp-container">
                                <td>
                                    <div class="col-xl-6 mt-2">
                                        <label for="formFileLg" class="form-label"
                                            title="Visibility of New wallpaper Row in App." data-bs-toggle="tooltip"
                                            data-bs-placement="right" title="Visibility of New wallpaper Row in App.">
                                            New wallpaper visibility
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                <path
                                                    d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                            </svg>
                                        </label>
                                        <div class="form-check form-switch form-switch-lg mb-0" dir="ltr">
                                            <input type="checkbox" name="new_wlp_visibility" class="form-check-input"
                                                id="new_wlp_visibility"
                                                {{ isset($static_advance_options['new_wlp_visibility']) && $static_advance_options['new_wlp_visibility'] == 1 ? 'checked' : '' }}>
                                            <label class="form-check-label" for="customSwitchsizelg">Show/Hide</label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class=" my-5 new-wlp-more-options" style="display: block;">
                                        <div class="row">
                                            <div class="col-md-4 append-dropdown">

                                            </div>
                                            <div class="col-md-4">
                                                <div class="mb-3 row">
                                                    <label for="example-number-input"
                                                        class="col-md-2 col-form-label">Days</label>
                                                    <div class="col-md-10">
                                                        <input class="form-control" type="number" name="days"
                                                            id="days"
                                                            value="{{ isset($static_advance_options['days']) ? $static_advance_options['days'] : 7 }}"
                                                            required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    {{-- ----------------------------------------- --}}
                    {{-- Submit btn --}}
                    <div class="col-auto my-4">
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function() {
        // category visibility toggle
        const categorySwitch = document.getElementById("customSwitchsizelg");
        const moreOptions = document.querySelector(".more-options");

        if (categorySwitch.checked) {
            moreOptions.style.display = "block";
        } else {
            moreOptions.style.display = "none";
        }

        categorySwitch.addEventListener("change", function() {
            if (this.checked) {
                moreOptions.style.display = "block";
            } else {
                moreOptions.style.display = "none";
            }
        });

        // events visibility toggle
        const eventSwitch = document.getElementById("event_visibility");
        const eventsMoreOptions = document.querySelector(".events_more_options");

        if (eventSwitch.checked) {
            eventsMoreOptions.style.display = "block";
        } else {
            eventsMoreOptions.style.display = "none";
        }
        eventSwitch.addEventListener("change", function() {
            if (this.checked) {
                eventsMoreOptions.style.display = "block";
            } else {
                eventsMoreOptions.style.display = "none";
            }
        });

        // featured toggle
        const featuredSwitch = document.getElementById("featured_visibility");
        const efeaturedMoreOptions = document.querySelector(
            ".featured_more_options"
        );

        if (featuredSwitch.checked) {
            efeaturedMoreOptions.style.display = "block";
        } else {
            efeaturedMoreOptions.style.display = "none";
        }
        featuredSwitch.addEventListener("change", function() {
            if (this.checked) {
                efeaturedMoreOptions.style.display = "block";
            } else {
                efeaturedMoreOptions.style.display = "none";
            }
        });

        // trending visibility toggle
        const trendingSwitch = document.getElementById("trending_visibility");
        const trendingMoreOptions = document.querySelector(
            ".trending-more-options"
        );

        if (trendingSwitch.checked) {
            trendingMoreOptions.style.display = "block";
        } else {
            trendingMoreOptions.style.display = "none";
        }
        trendingSwitch.addEventListener("change", function() {
            if (this.checked) {
                trendingMoreOptions.style.display = "block";
            } else {
                trendingMoreOptions.style.display = "none";
            }
        });

        // new wallpaper toggle
        const newWlpSwitch = document.getElementById("new_wlp_visibility");
        const newWlpMoreOptions = document.querySelector(".new-wlp-more-options");

        if (newWlpSwitch.checked) {
            newWlpMoreOptions.style.display = "block";
        } else {
            newWlpMoreOptions.style.display = "none";
        }
        newWlpSwitch.addEventListener("change", function() {
            if (this.checked) {
                newWlpMoreOptions.style.display = "block";
            } else {
                newWlpMoreOptions.style.display = "none";
            }
        });



        var sortableContainer = document.getElementById("sortable-container");
        var initialOrder = [];

        async function initializeSortable() {
            try {

                const response = await fetch("{{ route('wallpapers.advance_options_orders') }}", {
                    method: "GET",
                    headers: {
                        "Content-Type": "application/json",
                        "X-CSRF-TOKEN": "{{ csrf_token() }}",
                    },
                });

                const data = await response.json();
                let order = data.order.orders;
                order  = JSON.parse(order);



                if (data.success && order && typeof order === "object") {
                    const sortedKeys = Object.keys(order)
                        .sort((a, b) => order[a] - order[b]);

                    const fragment = document.createDocumentFragment();

                    sortedKeys.forEach(function(key) {
                        const id = key.replace("_order",
                            "-container"
                            );
                        const element = document.getElementById(id);
                        if (element) {
                            fragment.appendChild(element);
                        }
                    });

                    sortableContainer.appendChild(fragment);
                    initialOrder = sortedKeys.map(key => key.replace("_order",
                        "-container"));
                } else {
                    console.error("Failed to fetch initial order:", data.message);
                }
            } catch (error) {
                console.error("Error fetching initial order:", error);
            }

            // Initialize Sortable
            new Sortable(sortableContainer, {
                animation: 150,
                ghostClass: "sortable-ghost",
                onEnd: async function(evt) {
                    const rows = sortableContainer.children; // Get the updated <tr> rows
                    const orderArray = Array.from(rows)
                        .map((row) => row.id)
                        .filter(Boolean); // Extract IDs, ignoring empty ones

                    if (JSON.stringify(initialOrder) !== JSON.stringify(orderArray)) {
                        initialOrder = orderArray;

                        try {
                            const response = await fetch(
                                "{{ route('wallpapers.advance_options_data') }}", {
                                    method: "POST",
                                    headers: {
                                        "Content-Type": "application/json",
                                        "X-CSRF-TOKEN": "{{ csrf_token() }}",
                                    },
                                    body: JSON.stringify({
                                        order: orderArray,
                                    }),
                                });

                            const orderData = await response.json();

                            if (orderData.success) {
                                Swal.fire({
                                    icon: "success",
                                    title: "Success",
                                    text: "Order updated successfully!",
                                });
                            } else {
                                Swal.fire({
                                    icon: "error",
                                    title: "Error",
                                    text: "An error occurred while updating order.",
                                });
                            }
                        } catch (error) {
                            console.error("Error saving order to the database:", error);
                            Swal.fire({
                                icon: "error",
                                title: "Error",
                                text: "An error occurred while saving order to the database.",
                            });
                        }
                    }
                },
            });
        }

        // Initialize the sortable functionality
        initializeSortable();


        // ======================================================================================



        // Handle form submission asynchronously
        const form = document.querySelector("#advance-options-form");
        form.addEventListener("submit", async function(e) {
            e.preventDefault();
            // Gather form data
            const formData = new FormData(form);
            // console.log(form);

            try {
                const response = await fetch(
                    "{{ route('wallpapers.advance_options_data') }}", {
                        method: "POST",
                        headers: {
                            "X-CSRF-TOKEN": document
                                .querySelector('meta[name="csrf-token"]')
                                .getAttribute("content"),
                        },
                        body: formData,
                    }
                );

                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }

                const data = await response.json();

                // console.log(data);

                if (data.success) {
                    Swal.fire({
                        icon: "success",
                        title: "Success",
                        text: data.message || "Options updated successfully!",
                    });
                } else {
                    Swal.fire({
                        icon: "error",
                        title: "Error",
                        text: data.message ||
                            "An error occurred while updating options.",
                    });
                }
            } catch (error) {
                console.error("Error:", error);
                alert("An error occurred while processing the request.");
            }
        });
    });
</script>
