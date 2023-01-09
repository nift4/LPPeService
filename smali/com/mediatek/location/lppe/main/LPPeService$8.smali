.class Lcom/mediatek/location/lppe/main/LPPeService$8;
.super Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;
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

    .line 690
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/network/LPPeNetwork$LPPeNetworkReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(IZZ)V
    .locals 0

    .line 702
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[network] provideCapabilities() networkVersion=["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] civicAddressSupported=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public provideCivicAddress(Lcom/mediatek/location/lppe/network/CivicAddress;)V
    .locals 1

    .line 738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[network] provideCivicAddress() address=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public provideMeasurement(Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;)V
    .locals 1

    .line 732
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[network] provideMeasurement() meas=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCapabilities(I)V
    .locals 2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[network] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 695
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x40

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public requestCivicAddress()V
    .locals 1

    .line 726
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x44

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public startMeasurement()V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3700(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3800(Lcom/mediatek/location/lppe/main/LPPeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3900(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4000(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Context;)V

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 715
    :goto_0
    iget-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v3, 0x41

    invoke-static {v2, v3, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4100(Lcom/mediatek/location/lppe/main/LPPeService;II)V

    .line 716
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4202(Lcom/mediatek/location/lppe/main/LPPeService;Z)Z

    return-void
.end method

.method public stopMeasurement()V
    .locals 1

    .line 721
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$8;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x42

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
