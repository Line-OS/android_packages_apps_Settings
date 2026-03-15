.class public Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 106
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 257
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121274

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121275

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    .line 263
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    .line 269
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121310

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121311

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 274
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez p1, :cond_6

    .line 275
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212bf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p1, v1, :cond_7

    .line 277
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    .line 283
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212bc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212bd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-ne p1, v1, :cond_c

    if-eqz p3, :cond_b

    .line 289
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_b
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212d1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    .line 294
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez p1, :cond_d

    .line 295
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121276

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    if-ne p1, v1, :cond_e

    .line 297
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212a0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :cond_e
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f121309

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 p2, 0x10

    if-ne p1, p2, :cond_11

    if-eqz p3, :cond_10

    .line 303
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_10
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212d3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    sget-object v1, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    if-eqz p3, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 237
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x10

    if-ne v5, v7, :cond_1

    const/16 v7, 0x8

    .line 239
    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_1

    goto :goto_2

    .line 244
    :cond_1
    invoke-direct {p0, v5, p1, v6}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 251
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 145
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 5

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f121301

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100054

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 212
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 0

    .line 197
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1212e1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1212e0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1212df

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 143
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 150
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f12129c

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 150
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f12129d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    .line 153
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 2

    .line 219
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 220
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 222
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    .line 160
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1212c3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 175
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f121307

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121308

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 186
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121306

    new-array v4, v2, [Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100055

    new-array v2, v2, [Ljava/lang/Object;

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    .line 187
    invoke-virtual {v5, v6, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 186
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f121305

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
