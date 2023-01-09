.class public final synthetic Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/net/Network;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;->f$0:Landroid/net/Network;

    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;->f$0:Landroid/net/Network;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->$r8$lambda$qOJm2wO8rUcTehGztcxChl3xIxU(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method
