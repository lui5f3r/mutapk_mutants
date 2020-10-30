.class public final Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TalkTopicHolder"
.end annotation


# instance fields
.field private id:I

.field private final readDot:Landroid/view/View;

.field private final subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09041d

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.topicTitleText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f09041c

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.topicSubtitleText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->subtitle:Landroid/widget/TextView;

    const p1, 0x7f09041b

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.topicReadDot)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->readDot:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bindItem(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V
    .locals 6

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getId()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->id:I

    .line 167
    sget-object v0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->INSTANCE:Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->isTalkTopicSeen(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)Z

    move-result v0

    .line 168
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->id:I

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getReplies()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 170
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getReplies()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->readDot:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 175
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->title:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    const v2, 0x7f100432

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->readDot:Landroid/view/View;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 168
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 184
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    sget-object v0, Lorg/wikipedia/talk/TalkTopicActivity;->Companion:Lorg/wikipedia/talk/TalkTopicActivity$Companion;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getWikiSite$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v2}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getUserName$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->id:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/wikipedia/talk/TalkTopicActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
