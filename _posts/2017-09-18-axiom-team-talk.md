---
layout: post
title:  "AXIOM Team Talk Volume 13.1- SDI Module, SMT Workshop and Exhibition"
date:   2017-09-18 01:00:00
categories: axiom fpga hardware python sdi photon-sdi photonsdi
---

<a href="https://www.apertus.org/axiom-team-talk-volume-13.1-article-september-2017">
<i>This item is cross posted from the Apertus° blog</i>
</a>

> We know a lot of people are waiting for news about hardware production and we
> are doing production and development in parallel. Our most recent article
> talked about progress with [electronics manufacturing](https://www.apertus.org/road-from-axiom-beta-developer-kit-to-production-camera-article-july-2017) - in this article and Team
> Talk we want to share news about new ongoing developments though.
> 
> <iframe style="width: 870px; height: 490px;" width="870" height="490" src="https://www.youtube.com/embed/efT7BhaubyM" frameborder="0" allowfullscreen=""></iframe>
>
> ## AXIOM Beta Dual 6G SDI module in development
> 
> When choosing between HDMI and SDI we have so far given HDMI priority as, for developers working with the AXIOM Beta, it meant a larger and more affordable choice of monitors, recorders and accessories (even if doing so risked the Beta being wrongfully perceived as a consumer device at the time) were compatible with the camera. With more developer kits out in the wild we’re now ready to focus on an SDI solution and since the Beta is fully modular it’s users are able to choose which plugin modules they want to install in this regard ie. SDI, HDMI, or both. Because the AXIOM Beta’s current CMV12000 sensor is capable of recording RAW video in 4K at high frame rates, and with other, future, more capable sensors being incorporated into the camera in mind, a good solution for transferring large amounts of data quickly is very important. The SDI module will be a dual-slot plugin module (for HDMI and SDI connectivity at the same time the [HDMI output shield](https://www.apertus.org/new-axiom-beta-modules-shields-article-february-2017) can be used).
> 
> <img src="https://www.apertus.org/sites/default/files/prototype-fund-01.jpg" style="max-width: 400px;">
>
> We received a grant from the [Prototype Fund backed by the German Federal Ministry of Education and Research (BMBF)](https://prototypefund.de/project/videoactive/) to develop open source FPGA Code/Logic for SDI video input and output. The project is titled Photon-SDI and is being developed in collaboration with [TimVideos.us](https://code.timvideos.us). TimVideos was founded by Tim ‘mithro’ Ansell, an Australia-based programmer creating the Numato Opsis board - a Mini-ITX standard, FPGA-based, open source, open hardware, video-data capture platform geared towards conference live-streaming/recording and FPGA-based video research.
> 
> Now let’s look at what the SDI module really means for the AXIOM Beta’s technical capabilities (Note: Not everything here is covered by the grant):
> 
>  * Cable lengths of up to 100m.
>  * Better integration into existing broadcast/live recording setups.
>  * 6G SDI supports: 10 Bit 4:2:2 UHD up to 30p, 10/12bit UHD RAW up to 60p.
>  * Dual 6G SDI will effectively double the aforementioned framerates/data rates.
>  * The AXIOM Beta module will be a dual slot plugin module and feature 2x 6G SDI inputs and 2x 6G SDI outputs (up to 12gbit/s total bandwidth simultaneously)
> 
> ## Next stop 34C3
> 
> If everything goes as planned we would love to do first real world experimentation with AXIOM Betas and installed SDI modules at the [34th Chaos Communication Congress - 34C3 (this year in Leipzig, Germany)](https://www.ccc.de/en/updates/2017/34C3-in-leipzig). The idea is to integrate the SDI Betas into the live streaming and recording system that captures the lectures at the congress.
> 
> <img src="https://www.apertus.org/sites/default/files/34c3.jpg" style="max-width: 400px;">
> 
> ## SMT Workshop
> 
> During several Make, Maker Faires and Linux events recently we have held Surface Mount Technology (SMT) workshops, inside which interested tinkerers could practice building their own electronic jewelry: small PCBs with a PIC microcontroller, battery and color LEDs. The process is very similar to the one we use to build AXIOM Beta hardware - reasonably simple if you have the right tools and know a few tricks. So after finishing their blinking bracelets we hope people start soldering their own AXIOM Betas right away at home.
>
> <table>
> 	<tr>
> 		<td>
> 			<img src="https://www.apertus.org/sites/default/files/mfb17-01.jpg" style="max-width: 400px;">
> 		</td><td>
> 			<img src="https://www.apertus.org/sites/default/files/mfb17-02.jpg" style="max-width: 400px;">
> 		</td><td>
> 			<img src="https://www.apertus.org/sites/default/files/mfb17-03.jpg" style="max-width: 400px;">
> 		</td>
> 	</tr>
> </table>
> 
> ## AXIOM at Vienna Biennale
> 
> The project, two AXIOM cameras and a film shot on the AXIOM Beta are currently being exhibited across [Vienna Biennale 2017 at the Museum of Applied Arts Vienna](http://www.viennabiennale.org/en/). Until the 1st of October you can visit the exhibition about artificial Intelligence, robots, automatized working environments, the Internet of Things, unlimited digital communication, “transparent” human beings, etc. The AXIOM project can be found in the City Factory: New Work. New Design. exhibition.
>
> <table>
> 	<tr>
> 		<td>
> 			<img src="https://www.apertus.org/sites/default/files/A-MAK_StadtFabrik_16_06_2017_51.jpg" style="max-width: 400px;">
> 		</td><td>
> 			<img src="https://www.apertus.org/sites/default/files/A-MAK_StadtFabrik_16_06_2017_56.jpg" style="max-width: 400px;">
> 		</td>
> 	</tr>
> </table>
