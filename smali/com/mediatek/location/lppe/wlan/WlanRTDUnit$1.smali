.class synthetic Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;
.super Ljava/lang/Object;
.source "WlanRTDUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    invoke-static {}, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->values()[Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    :try_start_0
    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->microseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->hundredsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tensOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->nanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->tenthsOfNanoseconds:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit$1;->$SwitchMap$com$mediatek$location$lppe$wlan$WlanRTDUnit:[I

    sget-object v1, Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;->end:Lcom/mediatek/location/lppe/wlan/WlanRTDUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
