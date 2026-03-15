.class public Lcom/android/settings/notification/ChannelListPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "ChannelListPreferenceController.java"


# static fields
.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String; = "categories"


# instance fields
.field protected mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 283
    new-instance p1, Lcom/android/settings/notification/ChannelListPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/ChannelListPreferenceController$2;-><init>(Lcom/android/settings/notification/ChannelListPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupComparator:Ljava/util/Comparator;

    .line 298
    sget-object p1, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$dSzr5KJ0Hjtvv6pPRsI6POWmWXg;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$dSzr5KJ0Hjtvv6pPRsI6POWmWXg;

    iput-object p1, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ChannelListPreferenceController;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/ChannelListPreferenceController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ChannelListPreferenceController;)Ljava/util/Comparator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ChannelListPreferenceController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelListPreferenceController;->populateList()V

    return-void
.end method

.method private getAlertingIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 305
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private populateGroupList()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 130
    new-instance v2, Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 131
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 133
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    const v3, 0x7f120a8d

    .line 135
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 137
    :cond_1
    sget-object v3, Lcom/android/settings/notification/ChannelListPreferenceController;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/notification/ChannelListPreferenceController;->populateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V

    .line 143
    :goto_0
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 148
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 149
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v7

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/settings/notification/ChannelListPreferenceController;->populateSingleChannelPrefs(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private populateList()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120a8c

    .line 115
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 116
    sget-object v1, Lcom/android/settings/notification/ChannelListPreferenceController;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 119
    new-instance v1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120a66

    .line 120
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p0, 0x0

    .line 121
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelListPreferenceController;->populateGroupList()V

    :goto_0
    return-void
.end method

.method private toggleBehaviorIconState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x7f0a0096

    .line 239
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->clearColorFilter()V

    goto :goto_0

    .line 246
    :cond_2
    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f0600c6

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {p2, p0, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 246
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "channels"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 80
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$populateGroupToggle$0$ChannelListPreferenceController(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 3

    .line 164
    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 165
    :goto_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 166
    iget-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v2, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ChannelListPreferenceController;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    return v0
.end method

.method public synthetic lambda$populateSingleChannelPrefs$1$ChannelListPreferenceController(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 206
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 208
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v2, 0x4

    .line 209
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 211
    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    move v1, v0

    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/settings/notification/ChannelListPreferenceController;->toggleBehaviorIconState(Landroid/graphics/drawable/Drawable;Z)V

    .line 218
    iget-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v0
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 260
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 263
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 264
    instance-of v3, v1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v3, :cond_1

    .line 265
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 269
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 273
    iget-object v3, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    .line 276
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 277
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/notification/ChannelListPreferenceController;->populateSingleChannelPrefs(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected populateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V
    .locals 3

    .line 157
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ad2

    .line 159
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 160
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 162
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Ux8WLEXSsZWEDEcQRrTD88TFjHU;-><init>(Lcom/android/settings/notification/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected populateSingleChannelPrefs(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;
    .locals 5

    .line 177
    new-instance v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v3

    .line 178
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    const/4 p3, 0x0

    .line 182
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    const/4 v1, 0x2

    if-le p3, v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    .line 187
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p3, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 190
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    .line 189
    invoke-static {p3, v1, v3}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 192
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v3, "uid"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v3, "package"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromSettings"

    .line 196
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const v1, 0x7f120a8b

    .line 200
    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const/16 v1, 0x48

    .line 201
    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 202
    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    .line 197
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 204
    new-instance p3, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Urfr_5neLaB7iA1JLSdRm8N8y5k;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/-$$Lambda$ChannelListPreferenceController$Urfr_5neLaB7iA1JLSdRm8N8y5k;-><init>(Lcom/android/settings/notification/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_3

    .line 223
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 89
    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    .line 91
    new-instance p1, Lcom/android/settings/notification/ChannelListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/ChannelListPreferenceController$1;-><init>(Lcom/android/settings/notification/ChannelListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 106
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
