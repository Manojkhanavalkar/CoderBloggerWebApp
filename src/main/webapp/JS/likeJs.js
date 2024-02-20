function doLike(post_id, email_id) {
    console.log(post_id + "," + email_id)
    const d = {
        post_id: post_id,
        email_id: email_id,
        operation: 'like'
    }
    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            let likeCounter = $(".like-counter");
            let currentCount = parseInt(likeCounter.html());

            if (data.trim() === 'true') {
                likeCounter.html(currentCount + 1);
            } else if (data.trim() === 'false') {
                likeCounter.html(currentCount - 1);
            }
            fetchLikeCount(post_id);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
        }
    });
    function fetchLikeCount(post_id) {
        $.ajax({
            url: "LikeServlet",
            data: { post_id: post_id, operation: 'getLikeCount' },
            success: function (data, textStatus, jqXHR) {
                console.log("Updated Like Count: " + data);
                likeCounter.html(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });
    }
}