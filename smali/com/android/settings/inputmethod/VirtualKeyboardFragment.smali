.class public final Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    .line 100
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .line 80
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 83
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move v10, v9

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v10, v1

    :goto_0
    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_3

    .line 86
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v5, v9

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v1, 0x1

    move v5, v1

    .line 89
    :goto_3
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 90
    new-instance v13, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 96
    invoke-virtual {v13, v12}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$3eczHKaadmVH3sZXf9rlrdYqLjw;

    invoke-direct {v2, v0}, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$3eczHKaadmVH3sZXf9rlrdYqLjw;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 101
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_4
    if-ge v9, v10, :cond_4

    .line 103
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 104
    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->setOrder(I)V

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 106
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtilCompat;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setOrder(I)V

    .line 111
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x159

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f1500ba

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 59
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 60
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "add_virtual_keyboard_screen"

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroidx/preference/Preference;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method
