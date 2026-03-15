.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"


# instance fields
.field private mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mIsUiRestricted:Z

.field private mMenu:Landroid/view/Menu;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_locale"

    .line 66
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0175

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    new-instance v1, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 275
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 277
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0051

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    .line 282
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getUserLocaleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 266
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private setRemoveMode(Z)V
    .locals 1

    .line 169
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 170
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    const v3, 0x1040013

    if-ne v0, v2, :cond_1

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 191
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1205d7

    .line 192
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1205d6

    .line 193
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 194
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 199
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100016

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 213
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1205d8

    .line 215
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x1040009

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 216
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 222
    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 240
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 299
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 301
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 304
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x158

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "localeInfo"

    .line 160
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 162
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getUserLocaleList()Ljava/util/List;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f120879

    .line 253
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x4

    .line 254
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f080109

    .line 255
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 257
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 87
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    const v0, 0x7f0d00db

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return v2

    .line 152
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 139
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz p1, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_1

    .line 142
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 100
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const v0, 0x7f120856

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const-string v1, "localeRemoveMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    const-string v1, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "localeRemoveMode"

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const-string v1, "showingLocaleRemoveDialog"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 122
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz p1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :cond_1
    return-void
.end method
