<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<main>
		<div class="slider-wrapper my-40 my-sm-25 float-left w-100">
			<div class="container">
				<div class="slider slider-for owl-carousel">
					<div>
						<a href="#"> <img src="img/slider/sample-01.jpg" alt=""
							height="800" width="1600" />
						</a>
						<div class="slider-content-wrap center effect_top">
							<div class="slider-title mb-20 text-capitalize float-left w-100">our
								specials</div>
							<div
								class="slider-subtitle mb-50 text-capitalize float-left w-100">fashion
								trend</div>
							<div class="slider-button text-uppercase float-left w-100">
								<a href="TiendaServlet">Shop Now</a>
							</div>
						</div>
					</div>
					<div>
						<a href="#"> <img src="img/slider/sample-02.jpg" alt=""
							height="800" width="1600" />
						</a>
						<div class="slider-content-wrap center effect_bottom">
							<div class="slider-title mb-20 text-capitalize float-left w-100">about
								us</div>
							<div
								class="slider-subtitle mb-50 text-capitalize float-left w-100">fashion
								style</div>
							<div class="slider-button text-uppercase float-left w-100">
								<a href="TiendaServlet">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main-content">
			<div id="ttcmsbanner" class="ttcmsbanner my-40 my-sm-25">
				<div class="ttbannerblock container text-center">
					<div class="row">
						<div
							class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element">
							<div class="ttbanner-img">
								<a href="#"><img src="img/banner/cms-01.jpg" alt="cms-01"
									height="600" width="630"></a>
							</div>
							<div class="ttbanner-inner d-inline-block align-top float-none">
								<div class="ttbanner-desc float-left w-100">
									<h2 class="ttbanner-heading text-uppercase float-left w-100">Womens</h2>
									<span class="title text-uppercase float-left w-100 pb-3">collection</span>
									<span class="subtitle float-left w-100 py-20">Et harum
										quidem rerum facilis est et expedita m libero tempore, cum
										solut</span> <span class="shop-now float-left w-100"><a
										href="TiendaServlet"
										class="d-inline-block align-top float-none btn-primary">Shop
											Now</a></span>
								</div>
							</div>
						</div>
						<div
							class="ttbanner2 ttbanner col-sm-6 col-xs-6 right-to-left hb-animate-element">
							<div class="ttbanner-img">
								<a href="#"><img src="img/banner/cms-02.jpg" alt="cms-02"
									height="600" width="630"></a>
							</div>
							<div class="ttbanner-inner d-inline-block align-top float-none">
								<div class="ttbanner-desc">
									<h2 class="ttbanner-heading text-uppercase">Men's</h2>
									<span class="title text-uppercase float-left w-100 pb-3">collection</span>
									<span class="subtitle float-left w-100 py-20">Et harum
										quidem rerum facilis est et expedita m libero tempore, cum
										solut</span> <span class="shop-now float-left w-100"><a
										href="TiendaServlet"
										class="d-inline-block align-top float-none btn-primary">Shop
											Now</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div id="main">
				<div id="hometab"
					class="home-tab my-40 my-sm-25 bottom-to-top hb-animate-element">
					<div class="container">
						<div class="row">
							<div class="tt-title d-inline-block float-none w-100 text-center">Trending
								Products</div>
							<div class="tab-content float-left w-100">
								<div class="tab-pane active float-left w-100"
									id="ttfeatured-main" role="tabpanel"
									aria-labelledby="featured-tab">
									<section id="ttfeatured" class="ttfeatured-products">
										<div class="ttfeatured-content products grid owl-carousel"
											id="owl1">
											<%
											List<ProductoVO> catalogo = (List<ProductoVO>) request.getAttribute("catalogo");

											for (ProductoVO producto : catalogo) {
											%>
											<div class="product-layouts">
												<div class="product-thumb">
													<div class="image zoom">
														<a href="DetalleProductoServlet?id=<%=producto.getId()%>">
															<img src="img/products/<%=producto.getImagen()%>" height="501"
															width="385" /> <img
															src="img/products/<%=producto.getImagen()%>"
															class="second_image img-responsive" height="501"
															width="385" />
														</a>
													</div>
													<div class="thumb-description">
														<div class="caption">
															<h4 class="product-title text-capitalize">
																<a
																	href="DetalleProductoServlet?id=<%=producto.getId()%>"><%=producto.getNombre()%></a>
															</h4>
														</div>
														<!-- 														<div class="rating">
															<div class="product-ratings d-inline-block align-middle">
																<span class="fa fa-stack"><i
																	class="material-icons">star</i></span> <span
																	class="fa fa-stack"><i class="material-icons">star</i></span>
																<span class="fa fa-stack"><i
																	class="material-icons">star</i></span> <span
																	class="fa fa-stack"><i
																	class="material-icons off">star</i></span> <span
																	class="fa fa-stack"><i
																	class="material-icons off">star</i></span>
															</div>
														</div> -->
														<div class="price">
															<div class="regular-price"><%=producto.getPrecio() + "€"%></div>
														</div>
														<div class="button-wrapper">
															<div class="button-group text-center">
																<button type="button" class="btn btn-primary btn-cart"
																	onclick="window.location.href='AñadirProductoServlet?id=<%=producto.getId()%>&product-quantity=1'" <%=producto.getStock()<1 ? "disabled='disabled'":"" %>>
																	<i class="material-icons">shopping_cart</i><span>Add
																		to cart</span>
																</button>
																<!-- 				<a href="wishlist.html"
																	class="btn btn-primary btn-wishlist"><i
																	class="material-icons">favorite</i><span>wishlist</span></a>
																<button type="button"
																	class="btn btn-primary btn-compare">
																	<i class="material-icons">equalizer</i><span>Compare</span>
																</button>
																<button type="button"
																	class="btn btn-primary btn-quickview"
																	data-toggle="modal" data-target="#product_view">
																	<i class="material-icons">visibility</i><span>Quick
																		View</span>
																</button> -->
															</div>
														</div>
													</div>
												</div>
											</div>
											<%
											}
											%>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="ttcmstestimonial"
					class="my-40 my-sm-25 bottom-to-top hb-animate-element">
					<div class="tttestimonial-content container">
						<div class="tttestimonial-inner">
							<div class="tttestimonial owl-carousel">
								<div>
									<div class="testimonial-block">
										<div class="testimonial-image">
											<img alt="" src="img/banner/user1.jpg" height="120"
												width="120" />
										</div>
										<div class="testimonial-content">
											<div class="testimonial-desc">
												<p>Duis faucibus enim vitae nunc molestie, nec facilisis
													arcu pulvinar. Nullam mattis arcu convallis, bibendum dui
													ac, laoreet est.Vivamus interdum egastas rutrum. Quisque
													laoreet ante sed placerat imperdiet.</p>
											</div>
											<div class="testimonial-user-title">
												<h4>John Duff</h4>
												<div class="user-designation">CEO</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="testimonial-block">
										<div class="testimonial-image">
											<img alt="" src="img/banner/user2.jpg" height="120"
												width="120" />
										</div>
										<div class="testimonial-content">
											<div class="testimonial-desc">
												<p>Duis faucibus enim vitae nunc molestie, nec facilisis
													arcu pulvinar. Nullam mattis arcu convallis, bibendum dui
													ac, laoreet est.Vivamus interdum egastas rutrum. Quisque
													laoreet ante sed placerat imperdiet.</p>
											</div>
											<div class="testimonial-user-title">
												<h4>Nazli dof</h4>
												<div class="user-designation">Marketing Manager</div>
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="testimonial-block">
										<div class="testimonial-image">
											<img alt="" src="img/banner/user3.jpg" height="120"
												width="120" />
										</div>
										<div class="testimonial-content">
											<div class="testimonial-desc">
												<p>Duis faucibus enim vitae nunc molestie, nec facilisis
													arcu pulvinar. Nullam mattis arcu convallis, bibendum dui
													ac, laoreet est.Vivamus interdum egastas rutrum. Quisque
													laoreet ante sed placerat imperdiet.</p>
											</div>
											<div class="testimonial-user-title">
												<h4>Aly Vefa</h4>
												<div class="user-designation">Sales Exuctive</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="ttcmssubbanner"
					class="ttcmssubbanner my-40 my-sm-25 bottom-to-top hb-animate-element">
					<div class="ttbannerblock container">
						<div class="row">
							<div class="ttbanner1 ttbanner col-sm-6 col-xs-6">
								<div class="ttbanner-img">
									<a href="#"><img src="img/banner/cms-03.jpg" alt="cms-03"
										height="600" width="400"></a>
								</div>
								<div class="ttbanner-inner">
									<div class="ttbanner-desc text-center">
										<span class="title text-uppercase">summer shop</span> <span
											class="subtitle text-uppercase py-20">up to 70% off</span> <span
											class="shop-now text-capitalize"><a href="#"
											class="btn-primary">shop now</a></span>
									</div>
								</div>
							</div>
							<div class="ttbanner2 ttbanner col-sm-6">
								<div class="ttbanner-img">
									<a href="#"><img src="img/banner/cms-04.jpg" alt="cms-04"
										height="600" width="400"></a>
								</div>
								<div class="ttbanner-inner">
									<div class="ttbanner-desc text-center">
										<span class="title text-uppercase">winter shop</span> <span
											class="subtitle text-uppercase py-20">up to 70% off</span> <span
											class="shop-now text-capitalize"><a href="#"
											class="btn-primary">shop now</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="ttsmartblog"
					class="my-40 my-sm-25 bottom-to-top hb-animate-element">
					<div
						class="tt-title d-inline-block float-none w-100 text-center text-capitalize">latest
						news</div>
					<div class="container">
						<div class="row">
							<div class="smartblog-content owl-carousel">
								<div class="ttblog">
									<div class="item">
										<div class="ttblog_image_holder">
											<a href="#"> <img src="img/banner/blog-01.jpg"
												alt="blog-01" width="415" height="269">
											</a> <span class="blogicons"> <a
												title="Click to view Full Image"
												href="img/banner/blog-01.jpg" data-lightbox="example-set"
												class="icon zoom"><i class="material-icons">search</i></a>
											</span>
										</div>
										<div class="blog-content-wrap float-left w-100">
											<div class="blog_inner">
												<h4 class="blog-title">
													<span>Share the Love</span>
												</h4>
												<div class="blog-desc">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit.</div>
												<div class="read-more text-capitalize">
													<a title="Click to view Read More" class="readmore">read
														more</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="ttblog">
									<div class="item">
										<div class="ttblog_image_holder">
											<a href="#"> <img src="img/banner/blog-02.jpg"
												alt="blog-02" width="415" height="269">
											</a> <span class="blogicons"> <a
												title="Click to view Full Image"
												href="img/banner/blog-02.jpg" data-lightbox="example-set"
												class="icon zoom"><i class="material-icons">search</i></a>
											</span>
										</div>
										<div class="blog-content-wrap float-left w-100">
											<div class="blog_inner">
												<h4 class="blog-title">
													<span>Upon of seasons earth</span>
												</h4>
												<div class="blog-desc">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit.</div>
												<div class="read-more text-capitalize">
													<a title="Click to view Read More" class="readmore">read
														more</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="ttblog">
									<div class="item">
										<div class="ttblog_image_holder">
											<a href="#"> <img src="img/banner/blog-03.jpg"
												alt="blog-03" width="415" height="269">
											</a> <span class="blogicons"> <a
												title="Click to view Full Image"
												href="img/banner/blog-03.jpg" data-lightbox="example-set"
												class="icon zoom"><i class="material-icons">search</i></a>
											</span>
										</div>
										<div class="blog-content-wrap float-left w-100">
											<div class="blog_inner">
												<h4 class="blog-title">
													<span>From Now we are certified web</span>
												</h4>
												<div class="blog-desc">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit.</div>
												<div class="read-more text-capitalize">
													<a title="Click to view Read More" class="readmore">read
														more</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="ttblog">
									<div class="item">
										<div class="ttblog_image_holder">
											<a href="#"> <img src="img/banner/blog-04.jpg"
												alt="blog-04" width="415" height="269">
											</a> <span class="blogicons"> <a
												title="Click to view Full Image"
												href="img/banner/blog-04.jpg" data-lightbox="example-set"
												class="icon zoom"><i class="material-icons">search</i></a>
											</span>
										</div>
										<div class="blog-content-wrap float-left w-100">
											<div class="blog_inner">
												<h4 class="blog-title">
													<span>Viderer voluptatum te eum</span>
												</h4>
												<div class="blog-desc">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit.</div>
												<div class="read-more text-capitalize">
													<a title="Click to view Read More" class="readmore">read
														more</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="ttblog">
									<div class="item">
										<div class="ttblog_image_holder">
											<a href="#"> <img src="img/banner/blog-05.jpg"
												alt="blog-05" width="415" height="269">
											</a> <span class="blogicons"> <a
												title="Click to view Full Image"
												href="img/banner/blog-05.jpg" data-lightbox="example-set"
												class="icon zoom"><i class="material-icons">search</i></a>
											</span>
										</div>
										<div class="blog-content-wrap float-left w-100">
											<div class="blog_inner">
												<h4 class="blog-title">
													<span>Share the Love</span>
												</h4>
												<div class="blog-desc">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit.</div>
												<div class="read-more text-capitalize">
													<a title="Click to view Read More" class="readmore">read
														more</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>