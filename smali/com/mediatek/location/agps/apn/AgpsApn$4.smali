.class synthetic Lcom/mediatek/location/agps/apn/AgpsApn$4;
.super Ljava/lang/Object;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

.field static final synthetic $SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

.field static final synthetic $SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 274
    invoke-static {}, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->values()[Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_NONE:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    sget-object v3, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_GSM7:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UTF8:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_UCS2:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;->AGPS_NI_ENCODING_TYPE_ASCII:Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 246
    :catch_4
    invoke-static {}, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->values()[Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I

    :try_start_5
    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->AGPS_NOTIFY_TYPE_NOTIFY_ONLY:Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I

    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->AGPS_NOTIFY_TYPE_NOTIFY_ALLOW_NO_ANSWER:Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I

    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->AGPS_NOTIFY_TYPE_NOTIFY_DENY_NO_ANSWER:Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I

    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNotifyType;->AGPS_NOTIFY_TYPE_PRIVACY:Lcom/mediatek/location/agps/apn/AgpsNotifyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 227
    :catch_8
    invoke-static {}, Lcom/mediatek/location/agps/apn/AgpsNiType;->values()[Lcom/mediatek/location/agps/apn/AgpsNiType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

    :try_start_9
    sget-object v5, Lcom/mediatek/location/agps/apn/AgpsNiType;->AGPS_NI_TYPE_VOICE:Lcom/mediatek/location/agps/apn/AgpsNiType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsNiType;->AGPS_NI_TYPE_UMTS_SUPL:Lcom/mediatek/location/agps/apn/AgpsNiType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

    sget-object v1, Lcom/mediatek/location/agps/apn/AgpsNiType;->AGPS_NI_TYPE_UMTS_CTRL_PLANE:Lcom/mediatek/location/agps/apn/AgpsNiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

    sget-object v1, Lcom/mediatek/location/agps/apn/AgpsNiType;->AGPS_NI_TYPE_EMERGENCY_SUPL:Lcom/mediatek/location/agps/apn/AgpsNiType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
