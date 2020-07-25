<script id="comments-row-template" type="x-tmpl-mustache">

			<li>
				<div class="d-flex flex-row">
					<div class="flex-column comment_image">
						<img {{{Owner}}} class="rounded-circle imgprofile"
							alt="User" width="40">
					</div>
					<div class="flex-column comment_details">
						<ul>
							<li><span class="message-data-name"><strong class="formattextreader">{{createdByName}}</strong></span></li>
							<li class="commentsdesc">{{commentsName}}</li>
							<li>
								<ul class="d-flex flex-row">
									<li class="reply">Reply</li>
									<li>Like</li>
									<li>{{createdTime}}</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="flex-column">
						<ul class="header-dropdown m-r--2 pt-2 d-flex">
							<li class="dropdown"><a href="#" onclick="return false;"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="true"> <i
									class="material-icons">more_vert</i>
							</a>
								<ul class="dropdown-menu pull-right" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
									<li>
                                    	<a href="#" data-toggle="modal" data-target=".kpi_comments_popup" onclick="handleCommentsPopup({{initiativeId}},{{id}},'{{commentsName}}')">Edit</a>
                                    </li>
									<li><a href="#" onclick="handleCommentsSave('{{initiativeId}}','{{id}}','delete')">Delete</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</li>

</script>