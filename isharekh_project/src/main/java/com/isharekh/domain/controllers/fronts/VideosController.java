package com.isharekh.domain.controllers.fronts;

import com.isharekh.domain.models.about.About;
import com.isharekh.domain.models.authors.Author;
import com.isharekh.domain.models.location.Location;
import com.isharekh.domain.models.news.News;
import com.isharekh.domain.models.news.NewsType;
import com.isharekh.domain.models.videos.Video;
import com.isharekh.domain.models.vision.Vision;
import com.isharekh.domain.repositories.about.AboutRepository;
import com.isharekh.domain.repositories.author.AuthorRepository;
import com.isharekh.domain.repositories.location.LocationRepository;
import com.isharekh.domain.repositories.vision.VisionRepository;
import com.isharekh.domain.services.news.NewsService;
import com.isharekh.domain.services.newstype.NewsTypeService;
import com.isharekh.domain.services.videos.FVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by : Ron Rith
 * Create Date: 03/30/2018.
 */
@Controller
@RequestMapping(value = "/front")
public class VideosController {
    @Autowired
    private NewsTypeService newsTypeService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private AuthorRepository authorRepository;

    @Autowired
    private FVideoService fVideoService;

    @Autowired
    private VisionRepository visionRepository;

    @Autowired
    private AboutRepository aboutRepository;

    @Autowired
    private LocationRepository locationRepository;

    @RequestMapping(value = "/videos",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView getHome() {
        ModelAndView modelAndView = new ModelAndView("/home/home");

        List<NewsType> newsTypes = (List<NewsType>) newsTypeService.getAll();
        List<News> news = (List<News>)  newsService.findAll();

        NewsType menu0 = null;
        NewsType menu1 = null;
        NewsType menu2 = null;
        List<News> newsList1 = new ArrayList<>();
        List<News> newsList2 = new ArrayList<>();

        if (newsTypes != null && news != null) {
            for (NewsType newsType : newsTypes) {
                for (News news1 : news) {
                    if (newsType.getDesEn().equalsIgnoreCase("Home")) {
                        NewsType newsType1 = new NewsType();
                        newsType1.setId(newsType.getId());
                        newsType1.setDes(newsType.getDes());
                        menu0 = newsType1;
                    }
                    if (newsType.getDesEn().equalsIgnoreCase("Rich Man Idea")
                            && news1.getNewsType().getDesEn().equalsIgnoreCase("Rich Man Idea")) {
                        NewsType newsType1 = new NewsType();
                        newsType1.setId(newsType.getId());
                        newsType1.setDes(newsType.getDes());
                        menu1 = newsType1;

                        if (news1.getName() != null) {
                            News newsItem = new News();
                            newsItem.setId(news1.getId());
                            newsItem.setDec(news1.getDec());
                            newsItem.setName(news1.getName());
                            newsItem.setAuthor(news1.getAuthor());
                            newsItem.setNewsType(menu1);
                            newsList1.add(newsItem);
                        }
                    }

                    if (newsType.getId() == 9 && news1.getNewsType().getId() == 9) {
                        NewsType newsType1 = new NewsType();
                        newsType1.setId(newsType.getId());
                        newsType1.setDes(newsType.getDes());
                        menu2 = newsType1;

                        if (news1.getName() != null) {
                            News newsItem = new News();
                            newsItem.setId(news1.getId());
                            newsItem.setDec(news1.getDec());
                            newsItem.setName(news1.getName());
                            newsItem.setAuthor(news1.getAuthor());
                            newsItem.setNewsType(newsType1);
                            newsList2.add(newsItem);
                        }

                    }
                }
            }
        }
        modelAndView.addObject("newstypes6", menu0);
        modelAndView.addObject("newstypes8", menu1);
        modelAndView.addObject("newsitemtype8", newsList1);
        modelAndView.addObject("newstypes9", menu2);
        modelAndView.addObject("newsitemtype9", newsList2);

        return modelAndView;
    }
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET,headers = "Accept=application/json", produces =  "application/json")
    private ModelAndView detailVideos(@PathVariable("id") Long id) {
        ModelAndView modelAndView = new ModelAndView("/fronts/detail");

        List<Vision> visions = getVisions();
        List<About> abouts = getAboutUs();
        List<Location> locations = getLocations();

        //test id
        System.out.println("ID: " + id);
        List<NewsType> newsTypes = (List<NewsType>) newsTypeService.getAll();

        //get news by id
        Video videoDetail = (Video) fVideoService.getById(id);

        NewsType menuHome = null;
        NewsType menu1 = null;
        NewsType menu2 = null;

        if (newsTypes != null) {
            for (NewsType newsType : newsTypes) {
                if (newsType.getDesEn().equalsIgnoreCase("Home")) {
                    NewsType newsType1 = new NewsType();
                    newsType1.setId(newsType.getId());
                    newsType1.setDes(newsType.getDes());
                    menuHome = newsType1;
                }
                if (newsType.getDesEn().equalsIgnoreCase("Rich Man Idea")) {
                    NewsType newsType1 = new NewsType();
                    newsType1.setId(newsType.getId());
                    newsType1.setDes(newsType.getDes());
                    menu1 = newsType1;
                }
                if (newsType.getDesEn().equalsIgnoreCase("Agriculture")) {
                    NewsType newsType1 = new NewsType();
                    newsType1.setId(newsType.getId());
                    newsType1.setDes(newsType.getDes());
                    menu2 = newsType1;
                }
            }
        }

        modelAndView.addObject("newstypesHome", menuHome);
        modelAndView.addObject("newstypesSecond", menu1);
        modelAndView.addObject("newstypesThird", menu2);
        modelAndView.addObject("newsDetail",videoDetail);

        //footer
        if (visions != null) {
            modelAndView.addObject("visions", visions);
        }
        if (abouts != null) {
            modelAndView.addObject("abouts", abouts);
        }
        if (locations != null) {
            modelAndView.addObject("locations", locations);
        }
        return modelAndView;
    }

    private String getMenuList(List<NewsType> newsTypes) {
        List<NewsType> newsTypeList = getNewsType();
        for (NewsType newsType : newsTypeList) {
            if (newsType.getId() == 8) {
                return newsType.getDes();
            }
            if (newsType.getId() == 9) {
                return newsType.getDes();
            }
        }
        return null;
    }

    private List<NewsType> getNewsType() {
        List<NewsType> newsTypes = (List<NewsType>) newsTypeService.getAll();
        return newsTypes;
    }

    @RequestMapping(value = "/videoshome",method = RequestMethod.GET)
    private ModelAndView videoHome() {

        ModelAndView modelAndView = new ModelAndView("/fronts/videos");
        List<NewsType> newsTypes = (List<NewsType>) newsTypeService.getAll();
        List<Video> videos = (List<Video>) fVideoService.getAll();

        List<Vision> visions = getVisions();
        List<About> abouts = getAboutUs();
        List<Location> locations = getLocations();

        NewsType menuHome = null;
        NewsType menu1 = null;
        NewsType menu2 = null;

        List<Video> videoList1 = new ArrayList<>();

        List<Video> videoList2 = new ArrayList<>();

        if (newsTypes != null && videos != null) {
            for (NewsType newsType : newsTypes) {
                for (Video video : videos) {
                    if (newsType.getDesEn().equalsIgnoreCase("Home")) {
                        NewsType newsType1 = new NewsType();
                        newsType1.setId(newsType.getId());
                        newsType1.setDes(newsType.getDes());
                        menuHome = newsType1;
                    }
                    if (newsType.getId() != null && video.getNewsType() != null) {
                        if (newsType.getDesEn().equalsIgnoreCase("Rich Man Idea")
                                && video.getNewsType().getDesEn().equalsIgnoreCase("Rich Man Idea")) {
                            NewsType newsType1 = new NewsType();
                            newsType1.setId(newsType.getId());
                            newsType1.setDes(newsType.getDes());
                            menu1 = newsType1;

                            if (video.getDesEn() != null) {
                                Video videoDe = new Video();
                                videoDe.setId(video.getId());
                                videoDe.setDes(video.getDes());
                                videoDe.setDesEn(video.getDesEn());
                                videoDe.setRemoteVideoUrl(videoDe.getRemoteVideoUrl());
                                videoDe.setLocalVideo(video.getLocalVideo());
                                videoDe.setAuthor(video.getAuthor());
                                videoDe.setSecUser(video.getSecUser());
                                videoDe.setNewsType(video.getNewsType());

                                videoList1.add(videoDe);
                            }
                        }
                        if (newsType.getDesEn().equalsIgnoreCase("Agriculture")
                                && video.getNewsType().getDesEn().equalsIgnoreCase("Agriculture")) {
                            NewsType newsType1 = new NewsType();
                            newsType1.setId(newsType.getId());
                            newsType1.setDes(newsType.getDes());
                            menu2 = newsType1;

                            if (video.getDesEn() != null) {
                                Video videoDe = new Video();
                                videoDe.setId(video.getId());
                                videoDe.setDes(video.getDes());
                                videoDe.setDesEn(video.getDesEn());
                                videoDe.setRemoteVideoUrl(video.getRemoteVideoUrl());
                                videoDe.setLocalVideo(video.getLocalVideo());
                                videoDe.setAuthor(video.getAuthor());
                                videoDe.setSecUser(video.getSecUser());
                                videoDe.setNewsType(video.getNewsType());

                                videoList2.add(videoDe);
                            }
                        }
                    }
                }
            }
        }

        //menu
        modelAndView.addObject("newstypesHome", menuHome);
        modelAndView.addObject("newstypesSecond", menu1);
        modelAndView.addObject("newstypesThird", menu2);
        //data
        modelAndView.addObject("videoitemtype8", videoList1);
        modelAndView.addObject("videoitemtype9", videoList2);
        //footer
        if (visions != null) {
            modelAndView.addObject("visions", visions);
        }
        if (abouts != null) {
            modelAndView.addObject("abouts", abouts);
        }
        if (locations != null) {
            modelAndView.addObject("locations", locations);
        }
        return modelAndView;
    }

    public List<Vision> getVisions() {
        List<Vision> visions = (List<Vision>) visionRepository.findAll();
        if (visions != null) {
            return visions;
        }
        return null;
    }

    public List<About> getAboutUs(){
        List<About> abouts = (List<About>) aboutRepository.findAll();
        if (abouts != null) {
            return abouts;
        }
        return null;
    }

    public List<Location> getLocations(){
        List<Location> locations = (List<Location>) locationRepository.findAll();
        if (locations != null) {
            return locations;
        }
        return null;
    }
}
