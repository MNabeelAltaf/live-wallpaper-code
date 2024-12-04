    <x-app-layout>
        <form action="{{ route('4d_wallpapers.update', $data->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <input type="hidden" name="likes" value="{{$data->likes}}">
            <input type="hidden" name="downloads" value="{{$data->downloads}}">
            <input type="hidden" name="featured" value="{{$data->featured}}">
            <input type="hidden" name="wp_show" value="{{$data->wp_show}}">

            <div class="row">
                <div class="col-lg-12">
                    <div id="addproduct-accordion" class="custom-accordion">
                        <div class="card">
                            <a href="#addproduct-billinginfo-collapse" class="text-reset" data-bs-toggle="collapse"
                                aria-expanded="true" aria-controls="addproduct-billinginfo-collapse">
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
                                            <h5 class="font-size-16 mb-1">Edit Wallpaper</h5>
                                            <p class="text-muted text-truncate mb-0">Fill all information below</p>
                                        </div>
                                        <div class="flex-shrink-0">
                                            <i class="mdi mdi-chevron-up accor-down-icon font-size-24"></i>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <div id="addproduct-billinginfo-collapse" class="collapse show"
                                data-bs-parent="#addproduct-accordion">
                                <div class="p-4 border-top">
                                    <!-- Category -->
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Category</label>
                                        <select class="form-control" data-trigger name="cat_id"
                                            id="choices-single-default">
                                            @foreach ($categories as $category)
                                            <option value="{{ $category->id }}" {{ $data->cat_id == $category->id ? 'selected' : '' }}>
                                                {{ $category->name }}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <!-- Thumbnail -->
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Thumbnail</label>
                                        <input type="file" name="thumbPath" class="form-control">
                                        <img class="img-thumbnail" src="{{ asset('storage/'.$data->thumbPath) }}" style="height:300px" alt="">
                                    </div>

                                    <!-- Tags -->
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Tags</label>
                                        <input class="form-control" id="choices-text-remove-button" name="tags" type="text"
                                            value="{{ old('tags', $data->tags) }}" />
                                    </div>

                                    <!-- Background Settings -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">4D Effect</label>
                                                <input type="text" name="effect" class="form-control" value="{{ old('effect', $data->effect) }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">Background Zoom Speed</label>
                                                <input type="text" name="bg_zoom_speed" class="form-control" value="{{ old('bg_zoom_speed', $data->bg_zoom_speed) }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">Background Zoom Intensity</label>
                                                <input type="text" name="bg_zoom_intensity" class="form-control" value="{{ old('bg_zoom_intensity', $data->bg_zoom_intensity) }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">Background Rotation X-Axis</label>
                                                <input type="text" name="background_rotation_xaxis" class="form-control" value="{{ old('background_rotation_xaxis', $data->background_rotation_xaxis) }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">Background Rotation Y-Axis</label>
                                                <input type="text" name="background_rotation_yaxis" class="form-control" value="{{ old('background_rotation_yaxis', $data->background_rotation_yaxis) }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label for="choices-single-default" class="form-label">No Of Layers</label>
                                                <input type="text" name="no_of_layers" class="form-control" value="{{ old('no_of_layers', $data->no_of_layers) }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="layers-container">
                                        @foreach ($data->masks as $index => $mask)
                                        <div class="row layer">
                                            <div class="col-md-5">
                                                <div class="mb-3">
                                                    <label for="mask" class="form-label">Mask</label>
                                                    <input type="file" name="mask[]" class="form-control">
                                                    <img src="{{ asset('storage/'.$mask->mask_path) }}" style="height:100px;">
                                                    <input type="hidden" name="existing_masks[]" value="{{ $mask->id }}">
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="mb-3">
                                                    <label for="image" class="form-label">Image</label>
                                                    <input type="file" name="imgs[]" class="form-control">
                                                    @if(isset($data->images[$index])) <!-- Ensure that the image exists -->
                                                    <img src="{{ asset('storage/'.$data->images[$index]->img_path) }}" style="height:100px;">
                                                    <input type="hidden" name="existing_images[]" value="{{ $data->images[$index]->id }}">
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="col-md-2 mt-4">
                                                <a href="#" class="btn btn-danger btn-remove"> <i class="bx bx-file me-1"></i> Remove </a>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>

                                    <div class="mt-3">
                                        <button id="btn-add-layer" class="btn btn-success"> <i class="bx bx-plus me-1"></i> Add Layer </button>
                                    </div>
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
                    <button type="submit" class="btn btn-success"> <i class=" bx bx-file me-1"></i> Save </button>
                </div>
            </div>
        </form>

        <script>
            document.addEventListener("DOMContentLoaded", function() {
                new Choices(document.getElementById("choices-text-remove-button"), {
                    delimiter: ",",
                    editItems: !0,
                    maxItemCount: 5,
                    removeItemButton: !0,
                });
            });
            document.getElementById('btn-add-layer').addEventListener('click', function(e) {
                e.preventDefault();

                // Clone the first layer
                const firstLayer = document.querySelector('.layer');
                const newLayer = firstLayer.cloneNode(true);

                // Clear mask file input and remove its preview
                const maskInput = newLayer.querySelector('input[name="mask[]"]');
                if (maskInput) maskInput.value = ''; // Clear file input
                const maskPreview = newLayer.querySelector('img'); // Find mask preview
                if (maskPreview) maskPreview.src = ''; // Reset the image source (empty it)

                // Clear image file input and remove its preview
                const imageInput = newLayer.querySelector('input[name="imgs[]"]');
                if (imageInput) imageInput.value = ''; // Clear file input
                const imagePreview = newLayer.querySelectorAll('img')[1]; // Second img for the image
                if (imagePreview) imagePreview.remove(); // Remove image preview

                // Remove hidden inputs for existing mask and image IDs
                const existingMaskInput = newLayer.querySelector('input[name="existing_masks[]"]');
                if (existingMaskInput) existingMaskInput.remove();

                const existingImageInput = newLayer.querySelector('input[name="existing_images[]"]');
                if (existingImageInput) existingImageInput.remove();

                // Append the cleaned new layer to the container
                document.getElementById('layers-container').appendChild(newLayer);
            });

            // Remove layer
            document.addEventListener('click', function(e) {
                if (e.target.classList.contains('btn-remove')) {
                    e.preventDefault();
                    const layer = e.target.closest('.layer');
                    const allLayers = document.querySelectorAll('.layer');

                    // Prevent removal of the first layer
                    if (allLayers.length > 1 && layer !== allLayers[0]) {
                        layer.remove();
                    } else {
                        alert("The first layer cannot be removed.");
                    }
                }
            });
        </script>
    </x-app-layout>