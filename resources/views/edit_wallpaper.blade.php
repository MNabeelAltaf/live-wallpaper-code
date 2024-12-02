@if ($wallpaper_type == 'static')
    <x-app-layout>
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
                                        <h5 class="font-size-16 mb-1">AddWallpaper</h5>
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
                                        <label for="choices-text-remove-button"
                                            class="form-label font-size-13 text-muted">Limited to 5
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
@elseif($wallpaper_type == '3d')
    <x-app-layout>
        <div class="row">
            <div class="col-lg-12">

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                @if (session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                <div id="addproduct-accordion" class="custom-accordion">
                    <div class="card">
                        <a href="#addproduct-billinginfo-collapse" class="text-reset" data-bs-toggle="collapse"
                            aria-expanded="true" aria-controls="addproduct-billinginfo-collapse">
                            <div class="p-4">

                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0 me-3">
                                        <div class="avatar">
                                            <div class="avatar-title rounded-circle bg-primary-subtle text-primary">
                                                03
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex-grow-1 overflow-hidden">
                                        <h5 class="font-size-16 mb-1">Edit 3D-Wallpaper</h5>
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
                                <form method="POST" action={{ route('edit-wallpaper') }} enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Category</label>
                                        <div class="mb-3">
                                            <select class="form-control" name="category"
                                                id="choices-single-no-sorting">
                                                @foreach ($categories as $category)
                                                    <option value="{{ $category->name }}"
                                                        {{ $data->cat_id == $category->id ? 'selected' : '' }}>
                                                        {{ $category->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <div>
                                            <label for="formFileLg" class="form-label">Zip file</label>
                                            <input class="form-control form-control" id="formFileLg" accept=".zip"
                                                name="zip" type="file">
                                            <div id="file-size-error" class="text-danger mt-2" style="display:none;">
                                                The file size exceeds the maximum allowed size of 10MB.
                                            </div>
                                            <a class="btn btn-primary-subtle my-1"
                                                href="{{ asset('storage/' . $data->zip_path) }}" download>download
                                                zip</a>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Thumbnail File</label>
                                        <input type="file" name="thumbnail" class="form-control" accept=".jpg,.jpeg,.png,.gif,.webp">
                                        <div>
                                            <img style="width:5rem;" src="{{ asset('storage/' . $data->thumb_path) }}"
                                                alt="">
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="choices-single-default" class="form-label">Blur File</label>
                                        <input type="file" name="blur" class="form-control"  accept=".jpg,.jpeg,.png,.gif,.webp">
                                        <img style="width:5rem;" src="{{ asset('storage/' . $data->blur_path) }}"
                                            alt="">
                                    </div>
                                    <div class="mb-3">
                                        <label for="editCategoryShow" class="form-label">Hash Tags</label>
                                        <span><i>(Max 3 tags allowed)</i></span>
                                        <input type="text" class="form-control" id="editCategoryShow"
                                            placeholder="Enter tags separated by spaces" />
                                        <div id="tags-container" class="mt-2 d-flex flex-wrap gap-2">
                                            <!-- Tags will be preloaded here -->
                                        </div>
                                        <input type="hidden" id="tagsField" name="tags" required />
                                    </div>
                                    <div class="mb-3 ">

                                        <div class="col-md-2 d-flex justify-content-between">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="show">
                                                <label for="editCategoryShow" class="form-label">Show</label>
                                            </div>

                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="featured">
                                                <label for="editCategoryShow" class="form-label">Featured</label>
                                            </div>
                                        </div>
                                        <div class="col-md-10"></div>

                                    </div>
                                    <input type="hidden" name="cat_id" value="{{ $data->id }}">
                                    <input type="hidden" name="wallpaper_type" value="3d">
                                    <button class="btn btn-primary mt-5" type="submit">Edit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->
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
@endif





{{-- tags generation JS code --}}
<script>
    const inputField = document.getElementById('editCategoryShow');
    const tagsContainer = document.getElementById('tags-container');
    const tagsField = document.getElementById('tagsField');

    const existingTags = "{{ $data->hash_tags }}".split(',') || "{{ $data->hash_tags }}".split(' ')
    existingTags.forEach(tag => {
        if (tag.trim()) addTag(tag.trim(), false);
    });

    inputField.addEventListener('keyup', function(event) {
        let inputValue = inputField.value.trim();
        if ((event.key === " " || event.key === "Enter") && inputValue) {
            addTag(inputValue, true);
        }
    });

    function addTag(tag, isNew) {
        if (tagsContainer.children.length >= 3) {
            if (isNew) alert("You can only add up to 3 tags.");
            return;
        }

        const tagWithHash = tag.startsWith('#') ? tag : `#${tag}`;


        const tagElement = document.createElement('span');
        tagElement.classList.add('badge', 'bg-primary', 'd-flex', 'align-items-center', 'me-2');
        tagElement.textContent = tagWithHash;

        const deleteButton = document.createElement('button');
        deleteButton.classList.add('btn-close', 'btn-close-white', 'ms-2');
        deleteButton.onclick = function() {
            tagsContainer.removeChild(tagElement);
            updateTagsField();
        };

        tagElement.appendChild(deleteButton);
        tagsContainer.appendChild(tagElement);

        if (isNew) inputField.value = '';
        updateTagsField();
    }

    function updateTagsField() {
        const tags = [];
        tagsContainer.querySelectorAll('span').forEach(tag => {
            // Extract text without the delete button
            const tagText = tag.firstChild.textContent.trim();
            tags.push(tagText);
        });
        tagsField.value = tags.join(' ');
    }

    document.getElementById('submit-btn').addEventListener('click', function() {
        updateTagsField();
    });
</script>

{{-- zip file size checker --}}

<script>
    const fileInput = document.getElementById('formFileLg');
    const errorMessage = document.getElementById('file-size-error');
    const maxSizeInMB = 10; // 10MB

    fileInput.addEventListener('change', function() {
        const file = fileInput.files[0];
        if (file) {
            const fileSizeInMB = file.size / (1024 * 1024);

            if (fileSizeInMB > maxSizeInMB) {
                errorMessage.style.display = 'block';
                fileInput.value = '';
            } else {
                errorMessage.style.display = 'none';
            }
        }
    });
</script>
