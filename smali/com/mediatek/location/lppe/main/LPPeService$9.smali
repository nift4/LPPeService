.class Lcom/mediatek/location/lppe/main/LPPeService$9;
.super Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;
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

    .line 743
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$9;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/ipaddr/LPPeIpAddress$LPPeIpAddressReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(ILcom/mediatek/location/lppe/ipaddr/IpAddressCapabilities;)V
    .locals 0

    const-string p0, "[ip] provideCapabilities()"

    .line 755
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public provideInformation(Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;)V
    .locals 0

    const-string p0, "[ip] provideInformation()"

    .line 767
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCapabilities(I)V
    .locals 2

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ip] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 748
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$9;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x50

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public requestInformation()V
    .locals 1

    .line 760
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$9;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x51

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
