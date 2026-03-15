.class public Lcom/android/settings/notification/ImportancePreference;
.super Landroidx/preference/Preference;
.source "ImportancePreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisplayInStatusBar:Z

.field private mDisplayOnLockscreen:Z

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mSilenceButton:Landroid/view/View;

.field selectedBackground:Landroid/graphics/drawable/Drawable;

.field unselectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0800a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0d010c

    .line 84
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$ImportancePreference()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x2

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 140
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$tOS00Rm2-rgeNiYuwn9gyX0N6ow;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$tOS00Rm2-rgeNiYuwn9gyX0N6ow;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ImportancePreference()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x3

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 150
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$eik8Nolg6tRrn_QPd_sKGR2c5G4;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$eik8Nolg6tRrn_QPd_sKGR2c5G4;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 106
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a03e0

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const v0, 0x7f0a0067

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    .line 117
    iget v0, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$0vzlC8JJzQy-Rg1hLzfwlza2t4M;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$0vzlC8JJzQy-Rg1hLzfwlza2t4M;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    return-void
.end method

.method public setDisplayInStatusBar(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mDisplayInStatusBar:Z

    return-void
.end method

.method public setDisplayOnLockscreen(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mDisplayOnLockscreen:Z

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    return-void
.end method

.method setImportanceSummary(Landroid/view/ViewGroup;IZ)V
    .locals 9

    if-eqz p3, :cond_0

    .line 167
    new-instance p3, Landroid/transition/AutoTransition;

    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    .line 168
    invoke-virtual {p3, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 169
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 173
    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const v2, 0x7f0a03e3

    const v3, 0x7f0a03e2

    const v4, 0x7f0a03e1

    const v5, 0x7f0a006a

    const v6, 0x7f0a0069

    const/16 v7, 0x8

    const v8, 0x7f0a006b

    if-lt p2, v0, :cond_1

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
