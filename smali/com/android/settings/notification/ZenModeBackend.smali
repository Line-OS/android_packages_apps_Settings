.class public Lcom/android/settings/notification/ZenModeBackend;
.super Ljava/lang/Object;
.source "ZenModeBackend.java"


# static fields
.field public static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final ZEN_MODE_FROM_ANYONE:Ljava/lang/String; = "zen_mode_from_anyone"

.field protected static final ZEN_MODE_FROM_CONTACTS:Ljava/lang/String; = "zen_mode_from_contacts"

.field protected static final ZEN_MODE_FROM_NONE:Ljava/lang/String; = "zen_mode_from_none"

.field protected static final ZEN_MODE_FROM_STARRED:Ljava/lang/String; = "zen_mode_from_starred"

.field private static mDefaultRuleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/notification/ZenModeBackend;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mPolicy:Landroid/app/NotificationManager$Policy;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 505
    new-instance v0, Lcom/android/settings/notification/ZenModeBackend$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeBackend$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZenModeSettingsBackend"

    .line 64
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenMode()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/settings/notification/ZenModeBackend;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private clearDeprecatedEffects(I)I
    .locals 0

    and-int/lit8 p0, p1, -0x4

    return p0
.end method

.method private static getDefaultRuleIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/android/settings/notification/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    .line 437
    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->mDefaultRuleIds:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/settings/notification/ZenModeBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    .line 71
    :cond_0
    sget-object p0, Lcom/android/settings/notification/ZenModeBackend;->sInstance:Lcom/android/settings/notification/ZenModeBackend;

    return-object p0
.end method

.method protected static getKeyFromSetting(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method protected static getKeyFromZenPolicySetting(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "zen_mode_from_none"

    return-object p0

    :cond_0
    const-string p0, "zen_mode_from_starred"

    return-object p0

    :cond_1
    const-string p0, "zen_mode_from_contacts"

    return-object p0

    :cond_2
    const-string p0, "zen_mode_from_anyone"

    return-object p0
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz p1, :cond_0

    or-int p1, v0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p1, v0

    .line 182
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->clearDeprecatedEffects(I)I

    move-result p0

    return p0
.end method

.method private getPrioritySenders(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 5

    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method private getStarredContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeBackend;->queryData()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0
.end method

.method protected static getZenPolicySettingFromPrefKey(Ljava/lang/String;)I
    .locals 4

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zen_mode_from_starred"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "zen_mode_from_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "zen_mode_from_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "zen_mode_from_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x387093d3 -> :sswitch_3
        -0x19386538 -> :sswitch_2
        0xb2d30af -> :sswitch_1
        0x1b955bea -> :sswitch_0
    .end sparse-switch
.end method

.method private queryData()Landroid/database/Cursor;
    .locals 6

    .line 498
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "display_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "starred=1"

    const/4 v4, 0x0

    const-string v5, "times_contacted"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 0

    .line 380
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAlarmsTotalSilenceCallsMessagesSummary(I)I
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const p0, 0x7f1212c3

    return p0

    :cond_0
    const/16 p0, 0x8

    if-ne p1, p0, :cond_1

    const p0, 0x7f1212c2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method protected getAutomaticZenRules()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 424
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 425
    sget-object v0, Lcom/android/settings/notification/ZenModeBackend;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method protected getContactsCallsSummary(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const p0, 0x7f1212c2

    return p0

    :cond_0
    const p0, 0x7f1212c4

    return p0

    :cond_1
    const p0, 0x7f1212c0

    return p0

    :cond_2
    const p0, 0x7f1212bf

    return p0
.end method

.method protected getContactsMessagesSummary(Landroid/service/notification/ZenPolicy;)I
    .locals 0

    .line 328
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const p0, 0x7f1212c3

    return p0

    :cond_0
    const p0, 0x7f1212c4

    return p0

    :cond_1
    const p0, 0x7f1212c0

    return p0

    :cond_2
    const p0, 0x7f1212bf

    return p0
.end method

.method protected getContactsSummary(I)I
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    if-ne p1, v0, :cond_2

    const p0, 0x7f1212c3

    return p0

    :cond_2
    const p0, 0x7f1212c2

    return p0

    :cond_3
    const p0, 0x7f1212c4

    return p0

    :cond_4
    const p0, 0x7f1212c0

    return p0

    :cond_5
    const p0, 0x7f1212bf

    return p0
.end method

.method protected getNewDefaultPriorityCategories(ZI)I
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method protected getPriorityCallSenders()I
    .locals 1

    const/16 v0, 0x8

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getPriorityMessageSenders()I
    .locals 1

    const/4 v0, 0x4

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 448
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 450
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-object p0
.end method

.method public getStarredContactsSummary()Ljava/lang/String;
    .locals 6

    .line 472
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeBackend;->getStarredContacts()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 478
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    const v0, 0x7f1212c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    if-ge v4, v1, :cond_1

    .line 481
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 485
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-le v1, v5, :cond_3

    .line 487
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100056

    sub-int/2addr v1, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 487
    invoke-virtual {p0, v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_3
    :goto_1
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getZenMode()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    .line 113
    iget p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return p0
.end method

.method protected isPriorityCategoryEnabled(I)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isVisualEffectSuppressed(I)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeZenRule(Ljava/lang/String;)Z
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected savePolicy(IIII)V
    .locals 1

    .line 167
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method protected saveSenders(II)V
    .locals 5

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v1

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeBackend;->getPrioritySenders(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne p2, v3, :cond_1

    move p2, v2

    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    const-string v0, "Calls"

    move-object v2, v0

    move v0, p2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    const-string v2, "Messages"

    move v1, p2

    .line 212
    :cond_3
    invoke-virtual {p0, v4, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewDefaultPriorityCategories(ZI)I

    move-result p1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    .line 215
    sget-boolean p1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrefChange allow"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " allow"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "From="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method protected saveSoundPolicy(IZ)V
    .locals 2

    .line 160
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewDefaultPriorityCategories(ZI)I

    move-result p1

    .line 161
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    return-void
.end method

.method protected saveVisualEffectsPolicy(IZ)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->getNewSuppressedEffects(ZI)I

    move-result p1

    .line 155
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/settings/notification/ZenModeBackend;->savePolicy(IIII)V

    return-void
.end method

.method setDefaultZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 395
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicySenders(I)I

    move-result v1

    .line 401
    :cond_1
    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2, p1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 402
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 404
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 405
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 407
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 408
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 409
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 410
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 411
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 412
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 413
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 414
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 415
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 416
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method protected setZenMode(I)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method protected setZenModeForDuration(I)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    .line 103
    invoke-static {v0, p1, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBackend;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 441
    new-instance p0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 442
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0
.end method

.method protected updatePolicy()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    :cond_0
    return-void
.end method

.method protected updateZenMode()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    return-void
.end method

.method protected updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p0

    return p0
.end method
