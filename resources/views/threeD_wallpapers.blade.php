<x-app-layout>
    <div class="row">
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="card">
            <div class="col-lg-12 col-md-12">
                <div class="mb-3 mt-3">
                    <form method="GET" id="categoryForm" action="{{ route('3d_wallpapers.showRecords') }}">
                        <select class="form-control" name="category" id="choices-single-no-sorting"
                            onchange="filterCategory()">
                            <option value="" selected>Select Category</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}"
                                    {{ request('category') == $category->id ? 'selected' : '' }}>
                                    {{ $category->name }}
                                </option>
                            @endforeach
                        </select>
                    </form>
                </div>
            </div><!-- end col -->
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <h5 class="card-title">3D WallPapers List</h5>
                            </div>
                        </div><!-- end col -->

                        <div class="col-md-6">
                            <div
                                class="d-flex flex-wrap align-items-start justify-content-md-end mt-2 mt-md-0 gap-2 mb-3">
                                <div>
                                    <a href="{{ route('3d_wallpapers.create') }}" class="btn btn-light"><i
                                            class="uil uil-plus me-1"></i> Add New</a>
                                </div>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div id="gridjs-table"></div>
                        </div>
                    </div>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>
    <!-- Image Modal -->
    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="imageModalLabel">Image Preview</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <img id="modalImage" src="" alt="Thumbnail"
                        style="max-width: 100%; max-height: 100%; object-fit: contain;" />
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
                {
                    name: 'thumb_path',
                    formatter: (cell) => {
                        return gridjs.html(`
                <a href="javascript:void(0);" onclick="openImageModal('{{ asset('storage/${cell}') }}')">
                    <img src="{{ asset('storage/${cell}') }}" alt="Thumbnail" class="avatar-xl" />
                </a>
                `);
                    }
                },
                'Category',
                'likes',
                'downloads',
                {
                    name: 'hash_tags',
                    formatter: (cell) => {
                        const tags = cell.split(',').map(tag =>
                            `<span class="badge bg-primary mx-1">${tag.trim()}</span>`).join('');
                        return gridjs.html(tags);
                    }
                },
                {
                    name: 'wp_show',
                    formatter: (cell, row) => {
                        const isChecked = cell === 1 ? 'checked' : '';
                        return gridjs.html(`
                <div class="square-switch">
                    <input type="checkbox" id="wp-show-${row.cells[0].data}" switch="info" ${isChecked}
                           onchange="updateShowStatus(${row.cells[0].data}, this.checked)" />
                    <label for="wp-show-${row.cells[0].data}" data-on-label="Yes"
                           data-off-label="No" class="mb-0"></label>
                </div>
                `);
                    }
                },
                {
                    name: 'featured',
                    formatter: (cell, row) => {
                        const isChecked = cell === 1 ? 'checked' : '';
                        return gridjs.html(`
                            <div class="square-switch">
                                <input type="checkbox" id="featured-${row.cells[0].data}" switch="info" ${isChecked}
                                    onchange="updateFeaturedStatus(${row.cells[0].data}, this.checked)" />
                                <label for="featured-${row.cells[0].data}" data-on-label="Yes"
                                    data-off-label="No" class="mb-0"></label>
                            </div>
                        `);
                    }
                },
                {
                    name: 'Actions',
                    formatter: (cell, row) => {
                        return gridjs.html(`
                        <div class="actions">
                            <a class="btn btn-sm btn-primary" href="{{ url('3d-wallpapers') }}/${row.cells[0].data}/edit">Edit</a>
                            <button class="btn btn-sm btn-danger" onclick="deleteWallpaper(${row.cells[0].data})">Delete</button>
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

        function updateShowStatus(id, status) {
            console.log({
                id,
                show: status ? 1 : 0
            }); // Log the payload

            axios.post('{{ route("3d_wallpapers.updateShow") }}', {
                    id: id,
                    show: status ? 1 : 0, // Ensure `show` matches server expectations
                })
                .then(response => {
                    // console.log(response.data.message);
                })
                .catch(error => {
                    console.error(error.response.data); // Log detailed error from the server
                    alert('Error updating show status.');
                });
        }


        // Function to open the image in a modal
        function openImageModal(imageUrl) {
            const modalImage = document.getElementById('modalImage');
            modalImage.src = imageUrl;
            const modal = new bootstrap.Modal(document.getElementById('imageModal'));
            modal.show();
        }

        function filterCategory() {
            document.getElementById('categoryForm').submit();
        }

        function updateFeaturedStatus(id, status) {
            axios.post('{{ route("3d_wallpapers.updateFeatured") }}', {
                    id: id,
                    featured: status ? 1 : 0,
                })
                .then(response => {
                    if (response.data.success) {
                        // console.log(response.data.message);
                    } else {
                        alert('Failed to update the featured status.');
                    }
                })
                .catch(error => {
                    alert('Error updating featured status.');
                    console.error(error);
                });
        }

        function deleteWallpaper(id) {
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#f34e4e",
                cancelButtonColor:  "#786ACF",
                confirmButtonText: "Yes, delete it!",
            }).then(function(t) {
                if (t.value) {
                    axios.get(`/3d-wallpapers/${id}/delete`) // Adjust URL if needed
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
