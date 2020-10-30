.class Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExclusiveBusConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/activity/BaseActivity$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    .line 304
    instance-of v0, p1, Lorg/wikipedia/events/NetworkConnectEvent;

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    goto/16 :goto_0

    .line 306
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/events/SplitLargeListsEvent;

    if-eqz v0, :cond_1

    .line 307
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    const v1, 0x7f100397

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 308
    invoke-static {}, Lorg/wikipedia/settings/SiteInfoClient;->getMaxPagesPerReadingList()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100352

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 311
    :cond_1
    instance-of v0, p1, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;

    if-eqz v0, :cond_2

    .line 312
    iget-object p1, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->detectedRemoteTornDownDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 313
    :cond_2
    instance-of v0, p1, Lorg/wikipedia/events/ReadingListsEnableDialogEvent;

    if-eqz v0, :cond_3

    .line 314
    iget-object p1, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->promptEnableSyncDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 315
    :cond_3
    instance-of v0, p1, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    if-eqz v0, :cond_4

    .line 316
    iget-object p1, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-static {p1}, Lorg/wikipedia/activity/BaseActivity;->access$400(Lorg/wikipedia/activity/BaseActivity;)V

    goto :goto_0

    .line 317
    :cond_4
    instance-of v0, p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    if-eqz v0, :cond_5

    .line 318
    check-cast p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;->showMessage()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsHighestPriorityEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 319
    iget-object p1, p0, Lorg/wikipedia/activity/BaseActivity$ExclusiveBusConsumer;->this$0:Lorg/wikipedia/activity/BaseActivity;

    const v0, 0x7f100354

    .line 320
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    .line 319
    invoke-static {p1, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_5
    :goto_0
    return-void
.end method
