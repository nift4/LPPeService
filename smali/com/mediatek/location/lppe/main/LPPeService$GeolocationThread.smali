.class Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;
.super Ljava/lang/Thread;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeolocationThread"
.end annotation


# instance fields
.field mLat:D

.field mLng:D

.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 2121
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeocoderAddr(DD)V
    .locals 0

    .line 2143
    iput-wide p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->mLat:D

    .line 2144
    iput-wide p3, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->mLng:D

    .line 2145
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 8

    .line 2125
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3900(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x45

    const/4 v7, 0x0

    :try_start_0
    const-string v1, "[network] Start to query geoLocation"

    .line 2128
    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2129
    iget-wide v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->mLat:D

    iget-wide v3, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->mLng:D

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[network] geoLocation exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0, v6, v7}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3600(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V

    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_0

    .line 2134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[network] geoLocation updated size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2136
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3600(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v0, "[network] geoLocation ret null address"

    .line 2138
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2139
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$GeolocationThread;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, v6, v7}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3600(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
