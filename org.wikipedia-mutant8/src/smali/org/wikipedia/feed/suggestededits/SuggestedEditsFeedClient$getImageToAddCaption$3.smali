.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToAddCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

.field final synthetic this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iput-object p2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 1

    .line 212
    instance-of v0, p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;

    if-eqz v0, :cond_0

    .line 213
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;

    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    invoke-static {p1, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->access$postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;->$cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
