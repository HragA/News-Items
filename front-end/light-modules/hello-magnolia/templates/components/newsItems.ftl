<#-- Place your DOM here -->
<div id="news-items">
	<h1 class="title animate__animated animate__fadeInUp">
		News Items
	</h1>
	<div class="filter">
		<div class="searchFilter sameLine animate__animated animate__fadeInLeft">
			<input type="text" v-model="search" placeholder="Search For News Item" class="outlineEffect"/>
			<i class="fa fa-search" style="pointer-events:none"></i>
		</div>
		<div class="categoryFilter sameLine animate__animated animate__fadeInRight">
			<h3 class="sameLine">Categorys: </h3>
			<select v-model="selected_category" class="outlineEffect">
				<option v-for="category in categorys" :value="category.value" class="sameLine">{{category.text}}</option>
			</select>
		</div>
	</div>
	<div class="row-container animate__animated animate__fadeInUpBig">
		<div v-for="newsitem in filteredNews" v-if="selected_category == newsitem.category || selected_category == 'all'" class="article">
			<div class="articleBlock">
				<img :src="newsitem.imgUrl" class="articleImg">
				<h2 class="articleTitle">
					{{ newsitem.title }}
				</h2>
				<h3 class="articleExcerpt">
					{{ newsitem.excerpt }}
				</h3>
				<div class="articleBtn">
					<button type="button" @click="readArticle(newsitem.pageUrl)">Read Article</button>
					<h4 class="articleCategory">
						Category: {{ newsitem.category }}
					</h4>
				</div>
			</div>
		</div>
	</div>
</div>

<#-- Place your custom scripts here -->
<script type="text/javascript">
	console.log('Hello gateB');
	new Vue({
		el: '#news-items',
		data: {
			newsItems: [],
			categorys: [
				{'value': 'all', 'text': 'All'},
				{'value': 'Tech', 'text': 'Tech'},
				{'value': 'Sports', 'text': 'Sports'},
				{'value': 'Business', 'text': 'Business'}
      		],
			selected_category: 'all',
			search: ''
		},
		computed: {
			filteredNews() {
				if(this.search) {
					return this.newsItems.filter((newsitem) => {
						return newsitem.title.toLowerCase().includes(this.search.toLowerCase()) 
								|| newsitem.excerpt.toLowerCase().includes(this.search.toLowerCase());
					})
				} else {
					return this.newsItems;
				}
			}
		},
		mounted: function () {
			this.newsItems = this.loadNewsItems();
		},
		methods: {
			loadNewsItems: function () {
				this.$http.get('http://localhost:5000/news-items').then(response => {
					var newsItems = response.body;
					console.log(newsItems);
					this.newsItems = newsItems;
				}, response => {
					console.log('Http Get Failed')
				});
			},
			readArticle: function (url) {
				window.open(url, "_blank");
			}
		}
	});
</script>