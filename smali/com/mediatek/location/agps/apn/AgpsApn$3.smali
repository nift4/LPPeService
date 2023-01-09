.class Lcom/mediatek/location/agps/apn/AgpsApn$3;
.super Ljava/lang/Object;
.source "AgpsApn.java"

# interfaces
.implements Lcom/mediatek/location/agps/apn/NetInitiatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApn;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$3;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNiResponse, notifId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgpsApn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiResponseType;->AGPS_NI_RESPONSE_IGNORE:Lcom/mediatek/location/agps/apn/AgpsNiResponseType;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiResponseType;->AGPS_NI_RESPONSE_NORESP:Lcom/mediatek/location/agps/apn/AgpsNiResponseType;

    goto :goto_0

    .line 469
    :cond_1
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiResponseType;->AGPS_NI_RESPONSE_DENY:Lcom/mediatek/location/agps/apn/AgpsNiResponseType;

    goto :goto_0

    .line 466
    :cond_2
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsNiResponseType;->AGPS_NI_RESPONSE_ACCEPT:Lcom/mediatek/location/agps/apn/AgpsNiResponseType;

    .line 480
    :goto_0
    iget-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$3;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p2}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$400(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    move-result-object p2

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$3;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$300(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/socket/base/UdpClient;

    move-result-object p0

    invoke-virtual {p2, p0, p1, v0}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->AgpsNiResponse(Lcom/mediatek/socket/base/UdpClient;ILcom/mediatek/location/agps/apn/AgpsNiResponseType;)Z

    return v1
.end method
