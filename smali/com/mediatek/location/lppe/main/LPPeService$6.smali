.class Lcom/mediatek/location/lppe/main/LPPeService$6;
.super Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;
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

    .line 615
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$6;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/bluetooth/LPPeBluetooth$LPPeBluetoothReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(ILcom/mediatek/location/lppe/bluetooth/BluetoothProvideCapabilities;)V
    .locals 1

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[bt] provideCapabilities() btVersion=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] capabilities=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public provideMeasurement(Lcom/mediatek/location/lppe/bluetooth/BluetoothMeasurement;)V
    .locals 1

    .line 645
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[bt] provideMeasurement() meas=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    return-void
.end method

.method public provideMeasurementFinished()V
    .locals 0

    const-string p0, "provideMeasurementFinished()"

    .line 651
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCapabilities(I)V
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[bt] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 620
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$6;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public startMeasurement(ZLcom/mediatek/location/lppe/bluetooth/BluetoothMeasurementRequest;)V
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$6;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x21

    invoke-static {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3600(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V

    return-void
.end method

.method public stopMeasurement()V
    .locals 1

    .line 639
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$6;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
