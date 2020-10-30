.class public final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;
.super Ljava/lang/Object;
.source "SuggestedEditsSnackbars.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuggestedEditsSnackbars.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuggestedEditsSnackbars.kt\norg/wikipedia/suggestededits/SuggestedEditsSnackbars\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,88:1\n355#2,7:89\n*E\n*S KotlinDebug\n*F\n+ 1 SuggestedEditsSnackbars.kt\norg/wikipedia/suggestededits/SuggestedEditsSnackbars\n*L\n81#1,7:89\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;

.field private static final MAX_SHOW_PER_SESSION:I = 0x2

.field private static final snackbarSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$showFeedLinkSnackbar(Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method

.method private final getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const-string v1, "activity.componentName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSessionCount(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)I
    .locals 1

    .line 81
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 358
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method private final incrementSessionMap(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 2

    .line 77
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getMapKey(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getSessionCount(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 25
    new-instance v1, Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;

    invoke-direct {v1}, Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;-><init>()V

    if-eqz p2, :cond_7

    .line 29
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/4 v2, 0x1

    if-eq p1, p2, :cond_0

    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, p2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    const-string v3, "app.language()"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_2

    .line 31
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, p2, :cond_1

    const p2, 0x7f1000af

    goto :goto_0

    :cond_1
    const p2, 0x7f1000ac

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v3

    .line 30
    invoke-virtual {p0, p2, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    sget-object p2, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v2, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    :goto_1
    const p2, 0x7f1000ad

    goto :goto_2

    :cond_4
    const p2, 0x7f1000ae

    goto :goto_2

    :cond_5
    const p2, 0x7f1000b0

    .line 37
    :goto_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 43
    :goto_3
    sget p3, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    .line 27
    invoke-static {p0, p2, p3}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    const p3, 0x7f1003a2

    .line 46
    new-instance p4, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$1;

    invoke-direct {p4, p5}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 49
    :cond_6
    new-instance p3, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;

    invoke-direct {p3, p0, v1, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;-><init>(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 58
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_4

    .line 60
    :cond_7
    sget-object p2, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;

    invoke-direct {p2, p0, v1, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 62
    :goto_4
    invoke-virtual {v1}, Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;->logSnackbarShown()V

    return-void
.end method

.method public static synthetic show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    move-object v3, p7

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_3

    move-object v5, p7

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    .line 23
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    return-void
.end method

.method private final showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;->shouldSeeSnackbarAction()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->getSessionCount(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    const p2, 0x7f1000b1

    .line 67
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p1, p2, v0}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const v0, 0x7f100425

    .line 68
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;

    invoke-direct {v1, p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;-><init>(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 71
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 72
    invoke-direct {p0, p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->incrementSessionMap(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    :cond_0
    return-void
.end method
