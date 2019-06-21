function generatePost(postID, postContent) {
    var now = new Date();
    var html = '<div class="card border-primary bg-light shadow-lg mb-4" id="post-' + postID + '">' +
        '<div class="card-body pb-0">' +
        '<div class="media mb-3">' +
        '<img src="assets/img/3.png" class="mr-2 border rounded-circle" ' +
        'width="60" height="60" alt="userImage">' +
        '<div class="media-body" id="postContent-">' +
        '<div class="float-right">' +
        '<div class="dropdown">' +
        '<button class="btn btn-primary btn-sm" type="button" ' +
        'data-toggle="dropdown" ' +
        'aria-haspopup="true" aria-expanded="false" id="dropdownPost-' + postID + '">' +
        '<i class="fa fa-caret-down"></i></button>' +
        '<div class="dropdown-menu" ' +
        'aria-labelledby="dropdownPost-' + postID + '">' +
        '<button class="dropdown-item" href="#" ' +
        'id="togglePost-' + postID + '">Hide</button> ' +
        '<button class="dropdown-item" href="#" ' +
        'id="editPost-' + postID + '">Edit Post</button>' +
        '<button class="dropdown-item" href="#" ' +
        'id="deletePost-' + postID + '">Delete Post</button>' +
        '</div></div></div>' +
        '<h5 class="mt-0 font-weight-bold">User Full Name</h5>' +
        '<span class="text-muted" id="postDateTime-' + postID + '">' +
        now.toLocaleString() + '</span><br>' +
        '<span id="postContent-' + postID + '">' +
        postContent + '</span>' +
        '<div id="editDiv-' + postID + '" class="d-none border border-primary rounded p-3 mt-3">' +
        '<form id="editForm-' + postID + '">' +
        '<div class="form-group row">' +
        '<div class="col-12 mb-2">' +
        '<textarea name="" class="form-control" id="editPlace-' + postID + '" cols="30" rows="2">' +
        postContent + '</textarea></div>' +
        '<div class="form-group col-12 text-right mb-0">' +
        '<button class="btn btn-primary mb-0" id="editBtn-' + postID + '">Edit</button>' +
        '</div></div></form></div>' +
        '<div class="card border border-primary rounded mt-3 p-3 d-none" id="postComments-' + postID + '">' +
        '<div class="card-body pt-0"></div></div>' +
        '<div class="card border-primary my-4" id="commentArea-' + postID + '">' +
        '<div class="card-body pb-0">' +
        '<form action="#">' +
        '<div class="form-group row">' +
        '<div class="col-12">' +
        '<textarea class="form-control form-group" name="postContent" ' +
        'placeholder="Enter Comment..." id="commentContent-' + postID + '" cols="30" rows=""></textarea></div>' +
        '<div class="col-12">' +
        '<div class="form-group text-right">' +
        '<button name="commentBtn" id="commentBtn-' + postID + '" ' +
        'class="btn btn-primary pb-0">Comment</button>' +
        '</div></form></div></div></div></div></div></div></div></div>';
    return html;
}

function generateComment(postID, commentID, commentContent) {
    var now = new Date();
    var html = '<div class="media border border-primary rounded mt-0 mb-3 p-2" id="comment-' + postID + '-' + commentID + '">' +
        '<a class="mr-2" href="#">' +
        '<img src="assets/img/3.png" class="border rounded-circle" ' +
        'width="45" height="45" alt="userImage"></a>' +
        '<div class="media-body">' +
        '<div class="float-right">' +
        '<div class="dropdown">' +
        '<button class="btn btn-primary btn-sm" type="button" ' +
        'id="dropdownMenuButton" data-toggle="dropdown" ' +
        'aria-haspopup="true" aria-expanded="false">' +
        '<i class="fa fa-caret-down"></i></button>' +
        '<div class="dropdown-menu" ' +
        'aria-labelledby="dropdownMenuButton">' +
        '<button class="dropdown-item" ' +
        'id="toggleComment-' + postID + '-' + commentID + '">Hide</button>' +
        '<button class="dropdown-item" ' +
        'id="editComment-' + postID + '-' + commentID + '">Edit Comment</button>' +
        '<button class="dropdown-item" ' +
        'id="deleteComment-' + postID + '-' + commentID + '">Delete Comment</button>' +
        '</div></div></div>' +
        '<h5 class="mt-0 font-weight-bold">User Full Name</h5>' +
        '<span class="text-muted" id="commentDateTime-' + postID + '-' + commentID + '">' +
        now.toLocaleString() + '</span><br>' +
        '<span id="commentContent-' + postID + '-' + commentID + '">' +
        commentContent + '</span></div></div>' +
        '<div id="editDiv-' + postID + '-' + commentID + '" class="d-none border border-primary rounded p-3 mt-3">' +
        '<form id="editForm-' + postID + '-' + commentID + '">' +
        '<div class="form-group">' +
        '<div class="col-12 mb-2">' +
        '<textarea name="" class="form-control" id="editPlace-' + postID + '-' + commentID + '" cols="30" rows="2">' +
        commentContent + '</textarea></div>' +
        '<div class="form-group col-12 text-right mb-0">' +
        '<button class="btn btn-primary mb-0" id="editBtn-' + postID + '-' + commentID + '">Edit</button>' +
        '</div></div></form></div>';
    return html;
}

function generateProductCard(id, productImg, productName, amountLeft, discount, price, isNew, isSoldOut, description) {
    var isNewClass = isNew ? "" : "d-none";
    var isSoldOutClass = isSoldOut ? "" : "d-none";
    var html = '<div class="col-12 col-xl-6 mb-4 wow fadeIn" ' +
        'data-wow-duration=".8s" ' +
        'data-wow-delay="0s">' +
        '<div class="card border border-primary shadow-lg">' +
        '<a href="' + productImg + '" data-lightbox="image-1" data-title="Product Description"><img src="' + productImg + '" class="card-img-top border-bottom img-fluid" alt="card image"></a>' +
        '<div id="new" class="text-right m-2"><span class="card-subtitle badge badge-primary badge-pill  shadow-lg ' + isNewClass + '">NEW</span></div>' +
        '<div id="soldOut" class="mx-2 my-4"><span class="card-subtitle float-right badge badge-pill w-100 ' + isSoldOutClass + '">SOLD OUT</span></div>' +
        '<div class="card-body text-center">' +
        '<h4 class="card-title h2">' + productName + '</h4>' +
        '<div class="card-subtitle my-3">' +
        '<span class="card-subtitle badge badge-success badge-pill font-14px mr-1"> ' + price + ' $</span>' +
        '<span class="card-subtitle badge badge-danger badge-pill font-14px mr-1">' + discount + ' %</span>' +
        '<span class="card-subtitle badge badge-primary badge-pill font-14px mr-1">' + amountLeft + ' Products</span></div>' +
        '<div class="card-subtitle mb-2">' +
        '<span class="card-subtitle badge badge-light-red badge-pill font-14px mr-1">Kids</span>' +
        '<span class="card-subtitle badge badge-light-red badge-pill font-14px mr-1">Men</span>' +
        '<span class="card-subtitle badge badge-light-red badge-pill font-14px">Women</span></div>' +
        '<p class="card-text text-truncate">' + description + '</p>' +
        '<a href="#" class="btn btn-primary btn-sm mr-2" id="displayProducts-' + id + '">Display Products</a>' +
        '<a href="#" class="btn btn-warning btn-sm" id="ProductDetails-' + id + '">Product Details</a>' +
        '</div></div></div>';
    return html;
}

function generateCarousalItem(id, productImg) {
    var html = ' <div class="item" id="item-' + id + '"><a href="' + productImg + '" data-lightbox="image-1">' +
        '<img src="' + productImg + '" class="rounded" height="300" alt="img"></a></div>';
    return html;
}

function generateCarousalCaption(id, productName, description) {
    var html = '<div class="carousel-caption bg-opacity rounded p-2" id="caption-' + id + '">' +
        '<h4 class="card-title text-bold">' + productName + '</h4>' +
        '<p class="card-text text-truncate">' + description + '</p>' +
        '<a href="Category.html" class="btn btn-primary">Shop Now!</a></div>';
    return html;
}

$(document).ready(function (e) {
    var productItem = [
        {
            img: "assets/img/amos-bar-zeev-138099-unsplash.jpg",
            name: "Amos-Bar-Zeev",
            amountLeft: 25,
            discount: -20,
            price: 55,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/dan-gold-105699-unsplash.jpg",
            name: "Dan-Gold",
            amountLeft: 57,
            discount: -10,
            price: 150,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/alexander-andrews-396649-unsplash.jpg",
            name: "Alexander-Andrews",
            amountLeft: 50,
            discount: -15,
            price: 200,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/brooke-lark-254998-unsplash.jpg",
            name: "Brooke-Lark",
            amountLeft: 40,
            discount: -50,
            price: 250,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/charisse-kenion-468068-unsplash.jpg",
            name: "Charisse-Kenion",
            amountLeft: 5,
            discount: -10,
            price: 350,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/blue-clothes-clothing-52518.jpg",
            name: "Blue-Clothes",
            amountLeft: 15,
            discount: -17,
            price: 400,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/eaters-collective-132773-unsplash.jpg",
            name: "Eaters-Collective",
            amountLeft: 36,
            discount: -24,
            price: 243,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        },
        {
            img: "assets/img/sample.jpg",
            name: "Sample",
            amountLeft: 30,
            discount: -25,
            price: 100,
            description: "Lorem ipsumLorem ipsumLorem ipsum"
        }
    ];
    var owlcarousalItem;
    var caption;
    for (var i = 0; i < productItem.length; i++) {
        var product = generateProductCard(i,
            productItem[i].img,
            productItem[i].name,
            productItem[i].amountLeft,
            productItem[i].discount,
            productItem[i].price,
            Math.random() > .5,
            Math.random() < .5,
            productItem[i].description
        );
        $('#productContainer').append(product);
        $('#productContainer1').append(product);
        owlcarousalItem = generateCarousalItem(i, productItem[i].img);
        $('#owl-carouselContainer').append(owlcarousalItem);
        caption = generateCarousalCaption(i,
            productItem[i].name,
            productItem[i].description
        );
        $('#item-' + i).append(caption);
    }


    lightbox.option({
        'resizeDuration': 100,
        'wrapAround': true,
    });

    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 5,
        nav: true,
        autoplay: true,
        autoplayTimeout: 1000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    }); //Carousal

    var postContent = $('#postContent');
    var idCounter = 1;
    var idCommentCounter = 1;
    $('#postBtn').on('click', function (e) {
        e.preventDefault();
        var content = postContent.val().trim();
        if (content.trim() <= 0) {
            return alert("Enter Post");
        }
        var Post = generatePost(idCounter, content.trim());
        $('#postsContainer').prepend(Post);
        postContent.val("");
        //deletePost
        $('#deletePost-' + idCounter).on('click', function (e) {
            e.preventDefault();
            var is_confirmed = confirm("Are you sure?");
            if (is_confirmed) {
                var id = $(this).attr('id').split('-')[1];
                $('#post-' + id).remove();
            }
        });
        //editPost
        $('#editPost-' + idCounter).on('click', function (e) {
            e.preventDefault();
            var id = $(this).attr('id').split('-')[1];
            var postContent = $('#postContent-' + id);
            var editDiv = $('#editDiv-' + id);
            postContent.addClass('d-none');
            editDiv.removeClass('d-none');
            //editBtn
            $("button[id^='editBtn-']").on('click', function (e) {
                e.preventDefault();
                postContent.text($('#editPlace-' + id).val());
                postContent.removeClass('d-none');
                editDiv.addClass('d-none');
            });
        });
        //commentBtn
        $('#commentBtn-' + idCounter).on('click', function (e) {
            e.preventDefault();
            var id = $(this).attr('id').split('-')[1];
            var postComments = $('#postComments-' + id);
            var commentContent = $('#commentContent-' + id).val().trim();
            if (commentContent >= 0) {
                alert("Enter Comment")
            }
            else {
                var Comment = generateComment(id, idCommentCounter, commentContent);
                postComments.append(Comment);
                postComments.removeClass('d-none');
                $('#commentContent-' + id).val('');
            }
            //deleteComment
            $('#deleteComment-' + id + '-' + idCommentCounter).on('click', function (e) {
                e.preventDefault();
                var is_confirmed = confirm("Are you sure?");
                if (is_confirmed) {
                    var idd = $(this).attr('id').split('-')[2];
                    $('#comment-' + id + '-' + idd).remove();
                    $('#editDiv-' + id + '-' + idd).addClass('d-none');
                    var postComments = $('#postComments-' + id);
                    if (postComments.text().trim().length >= 0) {
                        postComments.addClass('d-none');
                    }
                }

            });
            //editComments
            $('#editComment-' + id + '-' + idCommentCounter).on('click', function (e) {
                e.preventDefault();
                var idd = $(this).attr('id').split('-')[2];
                $('#commentContent-' + id + '-' + idd).addClass('d-none');
                $('#editDiv-' + id + '-' + idd).removeClass('d-none');
            });
            //editBtns
            $('#editBtn-' + id + '-' + idCommentCounter).on('click', function (e) {
                e.preventDefault();
                var idd = $(this).attr('id').split('-')[2];
                var commentContent = $('#commentContent-' + id + '-' + idd);
                commentContent.text($('#editPlace-' + id + '-' + idd).val().trim());
                commentContent.removeClass('d-none');
                $('#editDiv-' + id + '-' + idd).addClass('d-none');
            });

            //toggleComments
            var toggleCommentBtn = $('#toggleComment-' + id + '-' + idCommentCounter);
            toggleCommentBtn.on('click', function (e) {
                e.preventDefault();
                var idd = $(this).attr('id').split('-')[2];
                var commentContent = $('#commentContent-' + id + '-' + idd);
                if (toggleCommentBtn.text() === 'Hide') {
                    commentContent.addClass('d-none');
                    toggleCommentBtn.text('Show');
                }
                else {
                    commentContent.removeClass('d-none');
                    toggleCommentBtn.text('Hide');
                }
            });
            idCommentCounter++;
        });
        //togglePost
        var toggleBtn = $('#togglePost-' + idCounter);
        toggleBtn.on('click', function (e) {
            e.preventDefault();
            var id = $(this).attr('id').split('-')[1];
            var postContent = $('#postContent-' + id);
            var postComments = $('#postComments-' + id);
            var commentArea = $('#commentArea-' + id);
            var editeDiv = $('#editDiv-' + id);
            if (toggleBtn.text() === 'Hide') {
                postContent.addClass('d-none');
                postComments.addClass('d-none');
                commentArea.addClass('d-none');
                editeDiv.addClass('d-none');
                toggleBtn.text('Show');
            }
            else {
                postContent.removeClass('d-none');
                if (postComments.text().trim() >= 0) {
                    postComments.addClass('d-none');
                }
                else {
                    postComments.removeClass('d-none');
                }
                commentArea.removeClass('d-none');
                editeDiv.removeClass('d-none');
                toggleBtn.text('Hide');
            }
        });
        idCounter++;
        // idCommentCounter++;
    });
    $(window).scroll(function (e) {
        var nav1 = $('#nav1');
        if ($(document).scrollTop() > 25) {
            nav1.removeClass('navbar-bink');
            nav1.removeClass('bg-dark');
            nav1.removeClass('navHeight');
            nav1.css('transition', '.7s ease-in-out 0s');
        }
        else {
            nav1.addClass('navbar-bink');
            nav1.addClass('bg-dark');
            nav1.addClass('navHeight');
            nav1.css('transition', '.7s ease-in-out 0s');
        }
    }); //Sroll Nav Color Change
});