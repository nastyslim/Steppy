# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140514123056) do

  create_table "checklists", :force => true do |t|
    t.string   "chk1"
    t.string   "chk2"
    t.string   "chk3"
    t.string   "chk4"
    t.string   "chk5"
    t.string   "chk6"
    t.string   "chk7"
    t.string   "chk8"
    t.string   "chk9"
    t.string   "chk10"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "chk_steppy_id"
    t.string   "chk_user_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "commentsies", :force => true do |t|
    t.integer  "steppy_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "commentsies", ["steppy_id"], :name => "index_commentsies_on_steppy_id"

  create_table "follows", :force => true do |t|
    t.integer  "followable_id",                      :null => false
    t.string   "followable_type",                    :null => false
    t.integer  "follower_id",                        :null => false
    t.string   "follower_type",                      :null => false
    t.boolean  "blocked",         :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "likes", :force => true do |t|
    t.string   "liker_type"
    t.integer  "liker_id"
    t.string   "likeable_type"
    t.integer  "likeable_id"
    t.datetime "created_at"
  end

  add_index "likes", ["likeable_id", "likeable_type"], :name => "fk_likeables"
  add_index "likes", ["liker_id", "liker_type"], :name => "fk_likes"

  create_table "mentions", :force => true do |t|
    t.string   "mentioner_type"
    t.integer  "mentioner_id"
    t.string   "mentionable_type"
    t.integer  "mentionable_id"
    t.datetime "created_at"
  end

  add_index "mentions", ["mentionable_id", "mentionable_type"], :name => "fk_mentionables"
  add_index "mentions", ["mentioner_id", "mentioner_type"], :name => "fk_mentions"

  create_table "ones", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reps", :force => true do |t|
    t.integer  "steppy_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reps", ["steppy_id"], :name => "index_reps_on_steppy_id"

  create_table "steppies", :force => true do |t|
    t.string   "goal"
    t.string   "region"
    t.text     "description"
    t.string   "step1"
    t.string   "step2"
    t.string   "step3"
    t.string   "step4"
    t.string   "step5"
    t.string   "step6"
    t.string   "step7"
    t.string   "step8"
    t.string   "step9"
    t.string   "step10"
    t.string   "ask"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "userid_string"
    t.string   "userid"
    t.string   "followid"
    t.string   "categories"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "email"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "votes", :force => true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], :name => "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["votable_id", "votable_type"], :name => "index_votes_on_votable_id_and_votable_type"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], :name => "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
