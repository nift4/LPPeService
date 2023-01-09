.class public Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;
.super Landroid/app/Service;
.source "LPPeServiceWrapper.java"


# instance fields
.field private mAgpsApn:Lcom/mediatek/location/agps/apn/AgpsApn;

.field mLppe:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->mLppe:Lcom/mediatek/location/lppe/main/LPPeService;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;)V
    .locals 1

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPPeService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LPPeServiceWrapper.onCreate(), enable AgpsApn."

    .line 26
    invoke-virtual {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->log(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->mLppe:Lcom/mediatek/location/lppe/main/LPPeService;

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {v0, p0}, Lcom/mediatek/location/lppe/main/LPPeService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->mLppe:Lcom/mediatek/location/lppe/main/LPPeService;

    .line 30
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {v0, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->mAgpsApn:Lcom/mediatek/location/agps/apn/AgpsApn;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "LPPeServiceWrapper.onDestroy()"

    .line 45
    invoke-virtual {p0, v0}, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->log(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->mLppe:Lcom/mediatek/location/lppe/main/LPPeService;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->cleanup()V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    const-string p1, "LPPeServiceWrapper.onStart()"

    .line 39
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeServiceWrapper;->log(Ljava/lang/Object;)V

    return-void
.end method
