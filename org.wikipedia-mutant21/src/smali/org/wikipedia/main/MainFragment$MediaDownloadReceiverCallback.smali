.class Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/main/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDownloadReceiverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/main/MainFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/main/MainFragment;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;-><init>(Lorg/wikipedia/main/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$MediaDownloadReceiverCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100148

    invoke-static {v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method
