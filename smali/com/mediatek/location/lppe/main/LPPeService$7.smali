.class Lcom/mediatek/location/lppe/main/LPPeService$7;
.super Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;
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

    .line 655
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$7;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/sensor/LPPeSensor$LPPeSensorReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCapabilities(ILcom/mediatek/location/lppe/sensor/SensorProvideCapabilities;)V
    .locals 1

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[sensor] provideCapabilities() sensorVersion=["

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

.method public providePressureMeasurement(Lcom/mediatek/location/lppe/sensor/SensorPressureMeasurement;)V
    .locals 1

    .line 685
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[sensor] providePressureMeasurement() measurement=["

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

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sensor] requestCapabilities() agpsVersion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 660
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$7;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 p1, 0x30

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method

.method public startMeasurement(Lcom/mediatek/location/lppe/sensor/SensorMeasurementRequest;)V
    .locals 1

    .line 674
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$7;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x31

    invoke-static {p0, v0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3600(Lcom/mediatek/location/lppe/main/LPPeService;ILjava/lang/Object;)V

    return-void
.end method

.method public stopMeasurement()V
    .locals 1

    .line 679
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$7;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3500(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
