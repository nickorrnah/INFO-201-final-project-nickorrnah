intro <- "Twitch is a live-streaming service that allows streamers (people who choose to create content on the platform) to share their experiences with viewers (people who choose to watch) live. 
These experiences are typically video-game related, but other experiences such as music, exploring cities around the world, friendly chats, and art are also common on the website.

Twitch was noted for undergoing astronomical growth immediately following the initial spike of Covid-19 cases in March 2020. To this Amazon-owned company, growth is a huge factor in determining how to relegate financial resources to specific projects.
With this in mind, we decided to take a closer look at this recent growth in order to determine if it was merely a quick fad, or if the growth is indeed a sustainable and long-term trend.
          
The dataset we will be discussing today contains monthly usage data statistics, such as hours watched and hours streamed.  This data was collected by Twitch and is all publicly available information. 
The data collection itself was compiled by a Twitch community member by the name of sullygnome. \n\n\n\n\n\n"



hours_watched_text <- "The above chart shows the total hours watched, separated by year.  The blue half accounts for the first 6 months of a year (January-June), and the orange half 
represents the later 6 months (July-December).

The goal of this chart was to identify any noticeable spikes in hours watched in both a yearly and 6-month time-frame. 

Taking a far-out view of the years 2016-2021, we see that hours watched has been steadily increasing year-over-year. 

Zooming in on the differences between the front and back halves of each year, we did not notice any trends such as one half having consistently higher hours watched than 
the other.

By far the most notable data point is the massive jump in hours watched that occurs between 2019 and 2020. Notably, the front half of 2020 had significantly more hours 
watched than the back half. Since this time frame encompasses the start of the pandemic and the entirety of the initial stay-at-home order, we speculate that these 
factors are what lead to the large increase. 2020 also had the greatest difference between its front and back halves, meaning that after the stay-at-home order ended, 
it is likely that many people no longer found the need to continue to watch streams on Twitch.

Finally, we noticed that despite the fall-off in hours watched that occurred in the back half of 2020, both the front and back halves of 2021 accrued more hours watched 
than the front half of 2020.  We interpret this as a sign of sustained growth."




hours_streamed_text <- "The above chart shows the total hours streamed, separated by year.  The blue half accounts for the first 6 months of a year (January-June), and the orange half 
represents the later 6 months (July-December).

The goal of this chart was to identify any noticeable spikes in hours streamed in both a yearly and 6-month time-frame. 

Taking a far-out view of the years 2016-2021, we see that hours streamed has been steadily increasing year-over-year. 

Zooming in on the differences between the front and back halves of each year, we did not notice any trends such as one half having consistently higher hours streamed 
than the other.

By far the most notable data point is the massive jump in hours streamed that occurs between 2019 and 2020. Notably, the front half of 2020 had significantly more hours 
streamed than the back half. Since this time frame encompasses the start of the pandemic and the entirety of the initial stay-at-home order, we speculate that these 
factors are what lead to the large increase. 2020 also had the greatest difference between its front and back halves, meaning that after the stay-at-home order ended, 
it is likely that many people no longer found the time to continue to stream on Twitch.

Finally, we noticed that despite the fall-off in hours streamed that occurred in the back half of 2020, both the front and back halves of 2021 featured a significant 
increase in hours streamed than the immediately prior time-frame.  We interpret this as a sign of sustained growth."


viewership_text <- "Twitch is a site whose metrics are often contained in such large numbers, that effectively interpretting them as raw numbers is incomprehensible by the human brain. In 
order to try and visualize just how significant any given year was for Twitch's viewership, we created the above pie chart.

This chart defaults to showing the years 2016-2021, as these are the years whose data is fully complete.  2022 is still underway, but we will discuss this datapoint at 
the end of this analysis.

Looking at the chart as a whole, we see that each year holds a larger share of the average views, meaning that average views on Twitch have been conistently increasing 
since 2016.

The largest jump in shares is 10%, and occurs between 2019 and 2020.  This encompasses the start of the pandemic and stay-at-home order, which is the likely cause of 
this massive increase in average viewership.

Moving along to the difference between 2020 and 2021, we notice that the jump is smaller (7.7%). This smaller jump means that the rate of increasing average viewership 
slowed down when compared to 2019 and 2020. However, 2021 holds the largest share at 32.4%.  This share being the largest means that average views on Twitch are 
still increasing year-over-year.

Expanding the chart to cover the time frame of 2016-2022, we see that 2022 currenltly takes up the 3rd largest chunk of average views.  At first glance this appears to 
show that 2022 is a decrease in average views, but when factoring in that this only accounts for the first 6 months of 2022 it paints a different picture.  Assuming 
that 2022 stays consistent in its average viewership, this means that 2022 would again be an increase in total average views for Twitch.

Taking all of these factors into account, we determine this to be a sign of sustained growth."