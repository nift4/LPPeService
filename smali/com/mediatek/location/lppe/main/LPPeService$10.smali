.class Lcom/mediatek/location/lppe/main/LPPeService$10;
.super Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;
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

    .line 772
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$10;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(ILcom/mediatek/location/lppe/lbs/LbsCapabilities;)V
    .locals 0

    const-string p0, "[lbs] provideCapabilities()"

    .line 784
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveSuplInit([B)V
    .locals 0

    const-string p0, "[lbs] receiveSuplInit()"

    .line 790
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCapabilities(I)V
    .locals 2

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 777
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$10;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x60

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public updateBatteryInfo(I)V
    .locals 0

    const-string p0, "[lbs] updateBatteryInfo()"

    .line 796
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public updateNlpStatus(Z)V
    .locals 0

    const-string p0, "[lbs] updateNlpStatus()"

    .line 802
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public updateVowifiRegistration(I)V
    .locals 0

    const-string p0, "[lbs] updateVowifiRegistration()"

    .line 807
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method
