.class public Lorg/wikipedia/descriptions/DescriptionEditView;
.super Landroid/widget/LinearLayout;
.source "DescriptionEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditView$Callback;
    }
.end annotation


# static fields
.field private static final TEXT_VALIDATE_DELAY_MILLIS:I = 0x3e8


# instance fields
.field private action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private activity:Landroid/app/Activity;

.field bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

.field cancelButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field descriptionEditContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

.field headerText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field helpButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isTextValid:Z

.field private isTranslationEdit:Z

.field private originalDescription:Ljava/lang/String;

.field pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageSummaryContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field pageSummaryLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageSummaryText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field saveButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private textValidateRunnable:Ljava/lang/Runnable;

.field toolbarContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance p1, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;

    invoke-direct {p1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->textValidateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance p1, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    .line 95
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance p1, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;

    invoke-direct {p1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->textValidateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance p1, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    .line 100
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p1, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;

    invoke-direct {p1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$vO__0WmPkVVlRFGi8iy9mBdlcPI;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->textValidateRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance p1, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    .line 105
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->init()V

    return-void
.end method

.method private clearError()V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private enableSaveButton(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f0403cd

    const v2, 0x7f0800a4

    if-eqz p2, :cond_0

    .line 415
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 417
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 418
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz p1, :cond_1

    .line 422
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 424
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    const p2, 0x7f0800a1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f04027b

    invoke-static {p2, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 428
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private getHeaderTextRes(Z)I
    .locals 1

    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f10040a

    return p1

    :cond_1
    :goto_0
    const p1, 0x7f10040b

    return p1

    .line 143
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 144
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_3

    const p1, 0x7f1000b7

    return p1

    .line 146
    :cond_3
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_4

    const p1, 0x7f100093

    return p1

    .line 148
    :cond_4
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_5

    const p1, 0x7f1000b8

    return p1

    :cond_5
    const p1, 0x7f100092

    return p1

    .line 154
    :cond_6
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq p1, v0, :cond_8

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    const p1, 0x7f100097

    return p1

    :cond_8
    :goto_1
    const p1, 0x7f100098

    return p1
.end method

.method private getHintText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .line 177
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b3

    new-array v3, v3, [Ljava/lang/Object;

    .line 179
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 178
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b5

    new-array v3, v3, [Ljava/lang/Object;

    .line 182
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 181
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :cond_1
    sget-object p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, p1, :cond_2

    .line 184
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLabelText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .line 163
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b4

    new-array v3, v3, [Ljava/lang/Object;

    .line 165
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 164
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b6

    new-array v3, v3, [Ljava/lang/Object;

    .line 168
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 167
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_1
    sget-object p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, p1, :cond_2

    .line 170
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 4

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 398
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 399
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->cancelButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->helpButton:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 400
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private layoutErrorState(Ljava/lang/CharSequence;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->clearError()V

    .line 289
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 291
    new-instance p1, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$sPTyRX4svfyOSYgfBuEIxnlKcXI;

    invoke-direct {p1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$sPTyRX4svfyOSYgfBuEIxnlKcXI;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private performReadArticleClick()V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onBottomBarClick()V

    :cond_0
    return-void
.end method

.method private setDarkReviewScreen(Z)V
    .locals 5

    .line 195
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_7

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 197
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->toolbarContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f0402c0

    if-eqz p1, :cond_1

    const v3, 0x106000c

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 198
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0403cd

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 199
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->cancelButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0403f3

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    :goto_2
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->headerText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f04027c

    invoke-static {v0, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->activity:Landroid/app/Activity;

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    const/high16 v1, -0x1000000

    if-eqz p1, :cond_5

    const/high16 v3, -0x1000000

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    :goto_4
    invoke-virtual {v0, v3}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->updateStatusBarColor(I)V

    .line 202
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Z)V

    .line 203
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->activity:Landroid/app/Activity;

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    :goto_5
    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->updateNavigationBarColor(I)V

    :cond_7
    return-void
.end method

.method private setHintText()V
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f110103

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 131
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getHintText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setReviewHeaderText(Z)V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->headerText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getHeaderTextRes(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpBottomBar()V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;->setSummary(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 226
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    new-instance v1, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$RjWWPQFpE_kCPskNn0Xehnixd7A;

    invoke-direct {v1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$RjWWPQFpE_kCPskNn0Xehnixd7A;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setVoiceInput()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$6ZSN-6EnKqIJ1gjlYszjyKDBbhs;

    invoke-direct {v1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$6ZSN-6EnKqIJ1gjlYszjyKDBbhs;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWarning(Ljava/lang/CharSequence;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(I)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060118

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 277
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 278
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 279
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->layoutErrorState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSaveButtonEnabled()V
    .locals 3

    .line 404
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 405
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 407
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->enableSaveButton(ZZ)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-direct {p0, v1, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->enableSaveButton(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected descriptionTextEditorAction(I)Z
    .locals 1
    .annotation runtime Lbutterknife/OnEditorAction;
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 377
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz p1, :cond_0

    .line 378
    invoke-interface {p1}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onSaveClick()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$layoutErrorState$2$DescriptionEditView()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$setHighlightText$3$DescriptionEditView(Ljava/lang/String;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/util/StringUtil;->highlightEditText(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setUpBottomBar$1$DescriptionEditView(Landroid/view/View;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->performReadArticleClick()V

    return-void
.end method

.method public synthetic lambda$setVoiceInput$0$DescriptionEditView(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onVoiceInputClick()V

    :cond_0
    return-void
.end method

.method public loadReviewContent(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 240
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v4, v5, :cond_0

    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v3, v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->setSummary(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/lang/String;Z)V

    .line 241
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->show()V

    .line 242
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;->hide()V

    .line 243
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->descriptionEditContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->helpButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->hide()V

    .line 248
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;->show()V

    .line 249
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->descriptionEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->helpButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_0
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setReviewHeaderText(Z)V

    .line 253
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDarkReviewScreen(Z)V

    return-void
.end method

.method onCancelClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onCancelClick()V

    :cond_0
    return-void
.end method

.method onHelpClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onHelpClick()V

    :cond_0
    return-void
.end method

.method onReadArticleClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 322
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->performReadArticleClick()V

    return-void
.end method

.method onSaveClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 300
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->validateText()V

    .line 301
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditView$Callback;->onSaveClick()V

    :cond_1
    return-void
.end method

.method pageDescriptionTextChanged()V
    .locals 3
    .annotation runtime Lbutterknife/OnTextChanged;
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;->shouldSeeChecks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->textValidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->textValidateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    .line 339
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->updateSaveButtonEnabled()V

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setAction(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 1

    .line 438
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 439
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    return-void
.end method

.method public setCallback(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->callback:Lorg/wikipedia/descriptions/DescriptionEditView$Callback;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(I)V

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400cb

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 268
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 270
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->layoutErrorState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHighlightText(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditView$by4G36BcwSTxX1z8XaZ9ru01IlI;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setPageTitle(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 114
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setVoiceInput()V

    .line 116
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setHintText()V

    .line 117
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->originalDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDescription(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setReviewHeaderText(Z)V

    return-void
.end method

.method public setSaveState(Z)V
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 232
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->enableSaveButton(ZZ)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->updateSaveButtonEnabled()V

    :goto_0
    return-void
.end method

.method public setSummaries(Landroid/app/Activity;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->activity:Landroid/app/Activity;

    .line 210
    iget-boolean p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 212
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryContainer:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/wikipedia/descriptions/DescriptionEditView;->getLabelText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryText:Landroid/widget/TextView;

    iget-boolean p3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p3, v0, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getExtractHtml()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getDescription()Ljava/lang/String;

    move-result-object p3

    .line 214
    :goto_2
    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->strip(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object p3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, p3, :cond_4

    .line 217
    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 218
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryContainer:Landroid/view/ViewGroup;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    :cond_4
    iget-boolean p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {p0, p1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setUpBottomBar()V

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public showingReviewContent()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->isShowing()Z

    move-result v0

    return v0
.end method

.method validateText()V
    .locals 6

    .line 345
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->funnel:Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;->shouldSeeChecks()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    .line 349
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 352
    iput-boolean v3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    .line 353
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->clearError()V

    goto/16 :goto_0

    .line 354
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 355
    iput-boolean v3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    .line 356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 357
    :cond_2
    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v2, v5, :cond_3

    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v2, v5, :cond_4

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v5, "."

    aput-object v5, v2, v3

    const-string v5, ","

    aput-object v5, v2, v0

    const-string v0, "!"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    const-string v4, "?"

    aput-object v4, v2, v0

    .line 358
    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    iput-boolean v3, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->isTextValid:Z

    .line 360
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v2, :cond_5

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 362
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/wikipedia/language/LanguageUtil;->startsWithArticle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 363
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setWarning(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_7

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 365
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 366
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setWarning(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :cond_8
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->clearError()V

    .line 371
    :goto_0
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->updateSaveButtonEnabled()V

    return-void
.end method
