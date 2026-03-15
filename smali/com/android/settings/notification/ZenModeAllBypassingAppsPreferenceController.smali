.class public Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final KEY:Ljava/lang/String;

.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHostFragment:Landroidx/fragment/app/Fragment;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "zen_mode_bypassing_apps_category"

    .line 49
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->KEY:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 158
    new-instance p1, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$2;-><init>(Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .line 68
    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 69
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList()V

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_bypassing_apps_category"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateNotificationChannelList()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 103
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->updateNotificationChannelList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method updateNotificationChannelList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 118
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 120
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 121
    invoke-virtual {v3, v2, v4}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 122
    new-instance v5, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v6

    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v6, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$1;

    invoke-direct {v6, p0, v1, v4}, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/app/NotificationChannel;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 152
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
