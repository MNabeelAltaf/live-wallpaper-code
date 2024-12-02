<x-app-layout>
    <div class="row">
        <div class="col-lg-12">
            <div id="addproduct-accordion" class="custom-accordion">
                <div class="card">
                    <a href="#addproduct-billinginfo-collapse" class="text-reset" data-bs-toggle="collapse" aria-expanded="true" aria-controls="addproduct-billinginfo-collapse">
                        <div class="p-4">

                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0 me-3">
                                    <div class="avatar">
                                        <div class="avatar-title rounded-circle bg-primary-subtle text-primary">
                                            01
                                        </div>
                                    </div>
                                </div>
                                <div class="flex-grow-1 overflow-hidden">
                                    <h5 class="font-size-16 mb-1">Add Wallpaper</h5>
                                    <p class="text-muted text-truncate mb-0">Fill all information below</p>
                                </div>
                                <div class="flex-shrink-0">
                                    <i class="mdi mdi-chevron-up accor-down-icon font-size-24"></i>
                                </div>

                            </div>

                        </div>
                    </a>

                    <div id="addproduct-billinginfo-collapse" class="collapse show" data-bs-parent="#addproduct-accordion">
                        <div class="p-4 border-top">
                            <form>
                                <div class="mb-3">
                                    <label for="choices-single-default" class="form-label">Category</label>
                                    <select class="form-control" data-trigger name="choices-single-category"
                                        id="choices-single-default">
                                        <option value="">Select</option>
                                        <option value="EL">Electronic</option>
                                        <option value="FA">Fashion</option>
                                        <option value="FI">Fitness</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="choices-single-default" class="form-label">Wallpaper</label>
                                    <input type="file" name="img_path" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="choices-single-default" class="form-label">Thumbnail</label>
                                    <input type="file" name="thumb_path" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="choices-single-default" class="form-label">Blur</label>
                                    <input type="file" name="blur_path" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="choices-text-remove-button" class="form-label font-size-13 text-muted">Limited to 5
                                        values with remove button</label>
                                    <input class="form-control" id="choices-text-remove-button" type="text"
                                        value="" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->

    <div class="row mb-4">
        <div class="col text-end">
            <a href="#" class="btn btn-danger"> <i class="bx bx-x me-1"></i> Cancel </a>
            <a href="#" class="btn btn-success"> <i class=" bx bx-file me-1"></i> Save </a>
        </div> <!-- end col -->
    </div> <!-- end row-->
    <!-- end row -->
     <script>
        new Choices(document.getElementById("choices-text-remove-button"), {
            delimiter: ",",
            editItems: !0,
            maxItemCount: 5,
            removeItemButton: !0,
        })
     </script>
</x-app-layout>