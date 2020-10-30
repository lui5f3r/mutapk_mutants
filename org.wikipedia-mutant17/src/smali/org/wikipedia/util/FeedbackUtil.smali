.class public final Lorg/wikipedia/util/FeedbackUtil;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# static fields
.field public static final LENGTH_DEFAULT:I

.field public static final LENGTH_LONG:I

.field public static final LENGTH_MEDIUM:I

.field private static final SNACKBAR_MAX_LINES:I = 0xa

.field private static TOOLBAR_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_MEDIUM:I

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_LONG:I

    .line 46
    sget-object v0, Lorg/wikipedia/util/-$$Lambda$FeedbackUtil$6nD3sFA7MkFbwRyQdqF5vO2txb8;->INSTANCE:Lorg/wikipedia/util/-$$Lambda$FeedbackUtil$6nD3sFA7MkFbwRyQdqF5vO2txb8;

    sput-object v0, Lorg/wikipedia/util/FeedbackUtil;->TOOLBAR_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBestView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 213
    instance-of v0, p0, Lorg/wikipedia/main/MainActivity;

    if-eqz v0, :cond_0

    const v0, 0x7f090169

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    instance-of v0, p0, Lorg/wikipedia/page/PageActivity;

    if-eqz v0, :cond_1

    const v0, 0x7f090171

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 217
    :cond_1
    instance-of v0, p0, Lorg/wikipedia/random/RandomActivity;

    if-eqz v0, :cond_2

    const v0, 0x7f090307

    .line 218
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 219
    :cond_2
    instance-of v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;

    if-eqz v0, :cond_3

    const v0, 0x7f090173

    .line 220
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 221
    :cond_3
    instance-of v0, p0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    if-eqz v0, :cond_4

    const v0, 0x7f0903b9

    .line 222
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x1020002

    .line 224
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;
    .locals 1

    .line 197
    new-instance v0, Lcom/skydoves/balloon/Balloon$Builder;

    invoke-direct {v0, p0}, Lcom/skydoves/balloon/Balloon$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setText(Ljava/lang/CharSequence;)Lcom/skydoves/balloon/Balloon$Builder;

    const p1, 0x7f080125

    .line 199
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setArrowDrawableResource(I)Lcom/skydoves/balloon/Balloon$Builder;

    sget-object p1, Lcom/skydoves/balloon/ArrowConstraints;->ALIGN_ANCHOR:Lcom/skydoves/balloon/ArrowConstraints;

    .line 200
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setArrowConstraints(Lcom/skydoves/balloon/ArrowConstraints;)Lcom/skydoves/balloon/Balloon$Builder;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/skydoves/balloon/ArrowOrientation;->TOP:Lcom/skydoves/balloon/ArrowOrientation;

    .line 201
    :goto_0
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setArrowOrientation(Lcom/skydoves/balloon/ArrowOrientation;)Lcom/skydoves/balloon/Balloon$Builder;

    const/16 p1, 0x18

    .line 202
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setArrowSize(I)Lcom/skydoves/balloon/Balloon$Builder;

    const/16 p1, 0x10

    .line 203
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setPadding(I)Lcom/skydoves/balloon/Balloon$Builder;

    const/high16 p1, 0x41600000    # 14.0f

    .line 204
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setTextSize(F)Lcom/skydoves/balloon/Balloon$Builder;

    const/4 p1, 0x0

    const-string p2, "sans-serif-medium"

    .line 205
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setTextTypeface(Landroid/graphics/Typeface;)Lcom/skydoves/balloon/Balloon$Builder;

    const/4 p1, -0x1

    .line 206
    invoke-virtual {v0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setTextColor(I)Lcom/skydoves/balloon/Balloon$Builder;

    const p1, 0x7f0400c5

    .line 207
    invoke-static {p0, p1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/skydoves/balloon/Balloon$Builder;->setBackgroundColorResource(I)Lcom/skydoves/balloon/Balloon$Builder;

    .line 208
    invoke-virtual {v0, p3}, Lcom/skydoves/balloon/Balloon$Builder;->setDismissWhenTouchOutside(Z)Lcom/skydoves/balloon/Balloon$Builder;

    .line 209
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->build()Lcom/skydoves/balloon/Balloon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showToastOverView(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const/4 p0, 0x1

    return p0
.end method

.method public static makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 3

    .line 156
    invoke-static {p0}, Lorg/wikipedia/util/FeedbackUtil;->findBestView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09039b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 p0, 0xa

    .line 160
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 161
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f09039a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0400db

    invoke-static {p2, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public static varargs setButtonLongPressToast([Landroid/view/View;)V
    .locals 4

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 135
    sget-object v3, Lorg/wikipedia/util/FeedbackUtil;->TOOLBAR_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static showAboutWikipedia(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100025

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showAndroidAppEditingFAQ(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100036

    .line 106
    invoke-static {p0, v0}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppEditingFAQ(Landroid/content/Context;I)V

    return-void
.end method

.method public static showAndroidAppEditingFAQ(Landroid/content/Context;I)V
    .locals 1

    .line 110
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->helpOpened()V

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showAndroidAppFAQ(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100037

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showAndroidAppRequestAnAccount(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100038

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showError(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    invoke-static {p0, p1}, Lorg/wikipedia/util/ThrowableUtil;->getAppError(Landroid/content/Context;Ljava/lang/Throwable;)Lorg/wikipedia/util/ThrowableUtil$AppError;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/util/ThrowableUtil$AppError;->getError()Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showMessage(Landroid/app/Activity;I)V
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showMessage(Landroid/app/Activity;II)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 82
    invoke-static {p0, p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showMessage(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showMessageAsPlainText(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showOfflineReadingAndData(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1001fb

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showPrivacyPolicy(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100302

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static showProtectionStatusMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x68d4d6e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x17615a90

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "autoconfirmed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "sysop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    const v0, 0x7f10021f

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 127
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const p1, 0x7f10021b

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const p1, 0x7f100220

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    :goto_1
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showTapTargetView(Landroid/app/Activity;Landroid/view/View;IILcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V
    .locals 0

    .line 144
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 144
    invoke-static {p1, p2, p3}, Lcom/getkeepsafe/taptargetview/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p1

    const p2, 0x7f0400c5

    .line 146
    invoke-static {p0, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/getkeepsafe/taptargetview/TapTarget;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 147
    invoke-static {p0, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    const p2, 0x3f666666    # 0.9f

    .line 148
    invoke-virtual {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleAlpha(F)Lcom/getkeepsafe/taptargetview/TapTarget;

    const/4 p2, 0x1

    .line 149
    invoke-virtual {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTarget;->cancelable(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 150
    invoke-virtual {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 143
    invoke-static {p0, p1, p4}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return-void
.end method

.method public static showToastOverView(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09025a

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7fffffff

    .line 172
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 173
    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 176
    aget p0, p1, p0

    const/4 v0, 0x1

    aget p1, p1, v0

    const v0, 0x800033

    invoke-virtual {p2, v0, p0, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 177
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-object p2
.end method

.method public static showTooltip(Landroid/view/View;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/wikipedia/util/FeedbackUtil;->getTooltip(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 185
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p2

    invoke-virtual {p1, p0, v1, p2}, Lcom/skydoves/balloon/Balloon;->showAlignTop(Landroid/view/View;II)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, p0, v1, p2}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;II)V

    :goto_0
    if-nez p3, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lorg/wikipedia/main/MainActivity;

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/main/MainActivity;

    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainActivity;->setCurrentTooltip(Lcom/skydoves/balloon/Balloon;)V

    :cond_1
    return-object p1
.end method
