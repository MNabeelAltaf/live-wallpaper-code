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
    <!-- end row -->
    <!-- Image Modal -->
    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="imageModalLabel">Image Preview</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <img id="modalImage" src="" alt="Thumbnail" style="max-width: 100%; max-height: 100%; object-fit: contain;" />
                </div>
            </div>
        </div>
    </div>
    <!-- Edit Category Modal -->
    <div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editCategoryForm" action="{{route('categories.update')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label for="editCategoryName" class="form-label">Name</label>
                            <input type="text" class="form-control" id="editCategoryName" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="editCategoryThumbnail" class="form-label">Thumbnail</label>
                            <input type="file" class="form-control" id="editCategoryThumbnail" name="thumbnail">
                        </div>
                        <div class="mb-3">
                            <label for="editCategoryShow" class="form-label">Show</label>
                            <input type="checkbox" class="form-check-input" id="editCategoryShow" name="show">
                        </div>
                        <input type="hidden" id="categoryId" name="id">
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </form>
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
                {
                    name: 'Thumbnail',
                    formatter: (cell) => {
                        return gridjs.html(`
                        <a href="javascript:void(0);" onclick="openImageModal('{{ asset('storage/${cell}') }}')">
                            <img src="{{ asset('storage/${cell}') }}" alt="${cell} Thumbnail" class="avatar-xl" />
                        </a>
                    `);
                    }
                },
                {
                    name: 'Show',
                    formatter: (cell, row) => {
                        const isChecked = cell === 1 ? 'checked' : '';
                        return gridjs.html(`
                        <div class="square-switch">
                            <input type="checkbox" id="square-${row.cells[0].data}" switch="info" ${isChecked}
                                   onchange="updateShowStatus(${row.cells[0].data}, this.checked)" />
                            <label for="square-${row.cells[0].data}" data-on-label="Yes"
                                   data-off-label="No" class="mb-0"></label>
                        </div>
                    `);
                    }
                },
                'Created At',
                {
                    name: 'Actions',
                    formatter: (cell, row) => {
                        return gridjs.html(`
                        <div class="actions">
                            <button class="btn btn-sm btn-primary" onclick="editCategory(${row.cells[0].data})">Edit</button>
                            <button class="btn btn-sm btn-danger" onclick="deleteCategory(${row.cells[0].data})">Delete</button>
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

        // Function to update 'Show' status
        function updateShowStatus(id, status) {
            axios.post('{{ route("categories.updateShow") }}', {
                    id: id,
                    show: status ? 1 : 0,
                })
                .then(response => {
                    // Success feedback can be added here if needed
                })
                .catch(error => {
                    alert('Error updating show status.');
                    console.error(error);
                });
        }
        // Function to open the image in a modal
        function openImageModal(imageUrl) {
            const modalImage = document.getElementById('modalImage');
            modalImage.src = imageUrl;
            const modal = new bootstrap.Modal(document.getElementById('imageModal'));
            modal.show();
        }

        function editCategory(id) {
            // Fetch the category data (either from an API or from the table row)
            axios.get(`/categories/${id}/edit`) // Adjust URL if needed
                .then(response => {
                    const category = response.data;

                    // Set modal fields with category data
                    document.getElementById('categoryId').value = category.id;
                    document.getElementById('editCategoryName').value = category.name;
                    document.getElementById('editCategoryShow').checked = category.show === 1;
                    // If you want to set the thumbnail (e.g., show the current image in the modal)
                    // You can add a preview image here if needed

                    // Show the modal
                    const modal = new bootstrap.Modal(document.getElementById('editCategoryModal'));
                    modal.show();
                })
                .catch(error => {
                    console.error('Error fetching category data:', error);
                    alert('Failed to load category data.');
                });
        }

        function deleteCategory(id) {
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
                    axios.get(`/categories/${id}/delete`) // Adjust URL if needed
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
