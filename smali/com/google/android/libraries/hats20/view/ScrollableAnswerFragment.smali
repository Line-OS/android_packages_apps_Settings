.class public abstract Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;
.super Lcom/google/android/libraries/hats20/view/BaseFragment;
.source "ScrollableAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;
    }
.end annotation


# instance fields
.field private isOnScrollChangedListenerAttached:Z

.field private questionTextView:Landroid/widget/TextView;

.field private scrollShadowHandler:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

.field private scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

.field private scrollViewContents:Landroid/view/View;

.field private surveyControlsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/BaseFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;-><init>(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollShadowHandler:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->isOnScrollChangedListenerAttached:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollViewContents:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->surveyControlsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->questionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private startRespondingToScrollChanges()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->isOnScrollChangedListenerAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollShadowHandler:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->isOnScrollChangedListenerAttached:Z

    :cond_0
    return-void
.end method

.method private stopRespondingToScrollChanges()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->isOnScrollChangedListenerAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollShadowHandler:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->isOnScrollChangedListenerAttached:Z

    :cond_0
    return-void
.end method


# virtual methods
.method abstract createScrollViewContents()Landroid/view/View;
.end method

.method abstract getQuestionText()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 56
    sget p3, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_with_scrollable_content:I

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_question_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->questionTextView:Landroid/widget/TextView;

    .line 60
    iget-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->questionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->getQuestionText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->format(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->questionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->getQuestionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->createScrollViewContents()Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollViewContents:Landroid/view/View;

    .line 65
    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_survey_question_scroll_view:I

    .line 66
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    iput-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    .line 67
    iget-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollViewContents:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 68
    iget-object p3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollView:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->scrollShadowHandler:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;

    invoke-virtual {p3, v0}, Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;->setOnHeightChangedListener(Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->startRespondingToScrollChanges()V

    .line 72
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    .line 73
    invoke-virtual {p2}, Lcom/google/android/libraries/hats20/SurveyPromptActivity;->getSurveyContainer()Landroid/view/ViewGroup;

    move-result-object p2

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_controls_container:I

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->surveyControlsContainer:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->stopRespondingToScrollChanges()V

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method
