.class public Lcom/mediatek/location/lppe/main/LPPeServiceApplication;
.super Landroid/app/Application;
.source "LPPeServiceApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string p0, "LPPeService"

    const-string v0, "LPPeServiceApplication() onCreate()"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    const-string p0, "LPPeService"

    const-string v0, "LPPeServiceApplication() onTerminate()"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
