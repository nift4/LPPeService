.class Lcom/mediatek/location/lppe/main/LPPeService$5;
.super Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$5;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/LPPeWlan$LPPeWlanReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(ILcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;)V
    .locals 0

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[wlan] provideCapabilities() wlanVersion=["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], this msg is not expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public provideMeasurement(Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;)V
    .locals 0

    const-string p0, "[wlan] provideMeasurement(), this msg is not expected"

    .line 611
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCapabilities(I)V
    .locals 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wlan] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 587
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$5;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public startMeasurement(ZLcom/mediatek/location/lppe/wlan/WlanMeasurements;)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$5;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x11

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public stopMeasurement()V
    .locals 1

    .line 605
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$5;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x12

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
