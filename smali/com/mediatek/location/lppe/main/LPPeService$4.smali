.class Lcom/mediatek/location/lppe/main/LPPeService$4;
.super Ljava/lang/Object;
.source "LPPeService.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    .line 563
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$4;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$4;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3400(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
