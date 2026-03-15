.class public final Lcom/android/settings/network/telephony/CellInfoUtil;
.super Ljava/lang/Object;
.source "CellInfoUtil.java"


# direct methods
.method public static cellInfoListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$CellInfoUtil$Qzf0JKtnhKRUHWJfKmx3LHFmuG0;

    .line 169
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    .line 170
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 4

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 179
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    .line 180
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v2, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x5

    aput-object p0, v2, v0

    const-string p0, "{CellType = %s, isRegistered = %b, mcc = %s, mnc = %s, alphaL = %s, alphaS = %s}"

    .line 177
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertOperatorInfoToCellInfo(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 11

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "^[0-9]{5,6}$"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    .line 145
    :goto_0
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance p0, Landroid/telephony/CellInfoGsm;

    invoke-direct {p0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    return-object p0
.end method

.method public static getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 3

    .line 100
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_0

    .line 101
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 103
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_1

    .line 107
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 109
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_2

    .line 113
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 115
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 119
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 121
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v2, p0, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "NetworkSelectSetting"

    const-string v0, "Invalid CellInfo type"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static isForbidden(Landroid/telephony/CellInfo;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 162
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapCellInfoWithCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/CellInfo;
    .locals 1

    .line 53
    instance-of v0, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    .line 55
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    return-object v0

    .line 57
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellIdentityCdma;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    .line 59
    check-cast p0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, p0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    return-object v0

    .line 61
    :cond_1
    instance-of v0, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma;-><init>()V

    .line 63
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0, p0}, Landroid/telephony/CellInfoWcdma;->setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0

    .line 65
    :cond_2
    instance-of v0, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v0, :cond_3

    .line 66
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 67
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, p0}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    return-object v0

    :cond_3
    const-string p0, "NetworkSelectSetting"

    const-string v0, "Invalid CellInfo type"

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
