.class Lorg/wikipedia/page/PageActivity$EventBusConsumer;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBusConsumer"
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
.field final synthetic this$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$1;)V
    .locals 0

    .line 843
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity$EventBusConsumer;-><init>(Lorg/wikipedia/page/PageActivity;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 846
    instance-of v0, p1, Lorg/wikipedia/events/ChangeTextSizeEvent;

    if-eqz v0, :cond_0

    .line 847
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 848
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->updateFontSize()V

    goto :goto_1

    .line 850
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    if-eqz v0, :cond_4

    .line 851
    check-cast p1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    invoke-virtual {p1}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 852
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->shouldShowBookmarkToolTip(Z)V

    .line 854
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 857
    :cond_2
    invoke-virtual {p1}, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->getPages()[Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 858
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v3}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageFragment;->getTitleOriginal()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 859
    iget-object v2, p0, Lorg/wikipedia/page/PageActivity$EventBusConsumer;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v2}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptionsFromDao()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
