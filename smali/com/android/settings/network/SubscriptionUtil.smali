.class public Lcom/android/settings/network/SubscriptionUtil;
.super Ljava/lang/Object;
.source "SubscriptionUtil.java"


# static fields
.field private static sActiveResultsForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sAvailableResultsForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->sActiveResultsForTesting:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    .line 55
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public static getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->sAvailableResultsForTesting:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 73
    :cond_0
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 74
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 82
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 83
    aget-object v4, p0, v3

    .line 84
    invoke-static {v4}, Lcom/android/settings/network/SubscriptionUtil;->isInactiveInsertedPSim(Landroid/telephony/UiccSlotInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result v5

    .line 86
    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;

    invoke-direct {v8, v5, v6}, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;-><init>(ILjava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 96
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 97
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccSlotInfo;

    .line 98
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 99
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCardString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public static getDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static isInactiveInsertedPSim(Landroid/telephony/UiccSlotInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic lambda$getAvailableSubscriptions$0(ILjava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 89
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getCardString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setActiveSubscriptionsForTesting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    sput-object p0, Lcom/android/settings/network/SubscriptionUtil;->sActiveResultsForTesting:Ljava/util/List;

    return-void
.end method

.method public static setAvailableSubscriptionsForTesting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    sput-object p0, Lcom/android/settings/network/SubscriptionUtil;->sAvailableResultsForTesting:Ljava/util/List;

    return-void
.end method
