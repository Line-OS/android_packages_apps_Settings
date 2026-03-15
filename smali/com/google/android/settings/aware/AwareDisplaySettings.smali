.class public Lcom/google/android/settings/aware/AwareDisplaySettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "AwareDisplaySettings.java"


# static fields
.field static final KEY_ALWAYS_ON:Ljava/lang/String; = "aware_always_on"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_OFF:Ljava/lang/String; = "aware_wake_off"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_WAKE_DISPLAY:Ljava/lang/String; = "aware_wake_display"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MY_USER:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mHelper:Lcom/google/android/settings/aware/AwareHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    .line 138
    new-instance v0, Lcom/google/android/settings/aware/AwareDisplaySettings$1;

    invoke-direct {v0}, Lcom/google/android/settings/aware/AwareDisplaySettings$1;-><init>()V

    sput-object v0, Lcom/google/android/settings/aware/AwareDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 1

    .line 56
    instance-of v0, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p3

    check-cast v0, Lcom/android/settings/utils/CandidateInfoExtra;

    invoke-virtual {v0}, Lcom/android/settings/utils/CandidateInfoExtra;->loadSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 61
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    return-object p1
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v2}, Lcom/google/android/settings/aware/AwareHelper;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f1201fb

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f1201f9

    .line 82
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    .line 83
    invoke-virtual {v5}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result v5

    const-string v6, "aware_wake_display"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v2, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    invoke-virtual {p0, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 87
    new-instance p0, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f1205ff

    .line 88
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f1205fe

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "aware_always_on"

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 87
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    new-instance p0, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f120eef

    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "aware_wake_off"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 93
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v2, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "aware_wake_display"

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "aware_always_on"

    return-object p0

    :cond_1
    const-string p0, "aware_wake_off"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150023

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {v0, p1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    .line 49
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const p1, 0x7f110007

    const v0, 0x7f080095

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setIllustration(II)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7f2ff692

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x62865a98

    if-eq v1, v2, :cond_1

    const v2, 0x23b27d15

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "aware_wake_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v1, "aware_wake_display"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_2
    const-string v1, "aware_always_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "doze_always_on"

    const-string v2, "doze_wake_display_gesture"

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 130
    :cond_4
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    .line 132
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 125
    :cond_5
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    .line 127
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 120
    :cond_6
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, v2, v5}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    .line 122
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return v5
.end method
