<x-app-layout>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header justify-content-between d-flex align-items-center">
                    <h4 class="card-title">Events</h4>
                    <div class="d-flex flex-wrap align-items-start justify-content-md-end mt-2 mt-md-0 gap-2 mb-3">
                        <div>
                            <a href="javascript:void(0);" class="btn btn-light" data-bs-toggle="modal"
                                data-bs-target="#myModal"><i class="uil uil-plus me-1"></i> Add New Event</a>
                        </div>
                    </div>
                </div><!-- end card header -->
                <div class="card-body">
                    <div id="gridjs-table"></div>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>
    <!-- Edit Category Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel">Add Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editCategoryForm" action="{{route('events.store')}}" method="post">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Start Date</label>
                            <input type="text" name="start_date" class="form-control pickers">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">End Date</label>
                            <input type="text" name="end_date" class="form-control pickers">
                        </div>
                        <div class="mb-3">
                            <label for="selectedCategoryCreate" class="form-label font-size-13 text-muted">Categories</label>
                            <select class="form-control" data-trigger
                                name="categories[]" id="selectedCategoryCreate" multiple>
                                @foreach ($categories as $category)
                                <option value="{{ $category->id }}">
                                    {{ $category->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="editEventModal" tabindex="-1" aria-labelledby="editEventModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editEventModalLabel">Edit Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editCategoryForm" action="{{ route('events_update') }}" method="post">
                        @csrf
                        <div class="mb-3">
                            <label for="editEventName" class="form-label">Name</label>
                            <input type="text" class="form-control" id="editEventName" name="name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Start Date</label>
                            <input type="text" name="start_date" id="start_date" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">End Date</label>
                            <input type="text" name="end_date" id="end_date" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="selectedCategory" class="form-label font-size-13 text-muted">Categories</label>
                            <select class="form-control"
                                name="categories[]" id="selectedCategory" multiple>
                                @foreach ($categories as $category)
                                <option value="{{ $category->id }}">
                                    {{ $category->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                        <input type="hidden" id="eventsId" name="id">
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.4.0/axios.min.js"></script>
    <script>
        new gridjs.Grid({
            columns: [
                'ID',
                'Name',
                'start_date',
                'end_date',
                {
                    name: 'Actions',
                    formatter: (cell, row) => {
                        return gridjs.html(`
                        <div class="actions">
                            <button class="btn btn-sm btn-primary" onclick="editEvent(${row.cells[0].data})">Edit</button>
                            <button class="btn btn-sm btn-danger" onclick="deleteEvents(${row.cells[0].data})">Delete</button>
                        </div>
                    `);
                    }
                }
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
                    console.log(response.data.id);

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
</x-app-layout>
