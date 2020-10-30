.class final Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;
.super Ljava/lang/Object;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 62
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    sget-object v0, Lorg/wikipedia/talk/TalkTopicActivity;->Companion:Lorg/wikipedia/talk/TalkTopicActivity$Companion;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getWikiSite$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v2}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getUserName$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/wikipedia/talk/TalkTopicActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
