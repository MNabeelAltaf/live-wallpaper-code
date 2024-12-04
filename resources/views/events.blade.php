<x-app-layout>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header justify-content-between d-flex align-items-center">
                    <h4 class="card-title">Categories</h4>
                    <div class="d-flex flex-wrap align-items-start justify-content-md-end mt-2 mt-md-0 gap-2 mb-3">
                        <div>
                            <a href="{{route('category.addView')}}" class="btn btn-light"><i class="uil uil-plus me-1"></i> Add New Category</a>
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
    <div class="modal fade" id="editEventModal" tabindex="-1" aria-labelledby="editEventModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editEventModalLabel">Edit Event</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editCategoryForm" action="{{route('events.update')}}" method="post">
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
                            <label for="choices-multiple-default" class="form-label font-size-13 text-muted">Default</label>
                            <select class="form-control" data-trigger
                                name="choices-multiple-default" id="choices-multiple-default" multiple>
                                <option value="Choice 1" selected>Choice 1</option>
                                <option value="Choice 2">Choice 2</option>
                                <option value="Choice 3">Choice 3</option>
                                <option value="Choice 4" disabled>Choice 4</option>
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

        function editEvent(id) {
            axios.get(`/events/${id}/edit`)
                .then(response => {
                    const category = response.data;
                    document.getElementById('eventsId').value = category.id;
                    document.getElementById('editEventName').value = category.name;
                    flatpickr("#start_date", {
                        defaultDate: category.start_date
                    });
                    flatpickr("#end_date", {
                        defaultDate: category.end_date
                    });
                    const modal = new bootstrap.Modal(document.getElementById('editEventModal'));
                    modal.show();
                })
                .catch(error => {
                    console.error('Error fetching category data:', error);
                    alert('Failed to load category data.');
                });
        }
    </script>
</x-app-layout>